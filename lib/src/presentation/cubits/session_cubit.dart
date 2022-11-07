import 'dart:async';

import 'package:bboiler/src/data/models/session_model.dart';
import 'package:bboiler/src/data/models/temp_model.dart';
import 'package:bboiler/src/domain/enitites/session_entity.dart';
import 'package:bboiler/src/domain/repositories/device_repository.dart';
import 'package:bboiler/src/presentation/cubits/temp_cubit.dart';
import 'package:bboiler/src/presentation/cubits/timer_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';

part 'session_cubit.freezed.dart';

@freezed
class SessionCubitState with _$SessionCubitState {
  const SessionCubitState._();

  const factory SessionCubitState.data(SessionEntity data) = DataSessionCubitState;
}

class SessionCubit extends Cubit<SessionCubitState> {
  bool _bloc = false;
  final TempCubit _tempCubit;
  final TimerCubit _timerCubit;
  final DeviceRepository _deviceRepository;
  late SessionEntity _session;
  late final StreamSubscription<TempCubitState> _tempSubscription;
  late final StreamSubscription<TimerCubitState> _timerSubscription;
  final _player = AudioPlayer();

  SessionCubit({
    required SessionEntity session,
    required TempCubit tempCubit,
    required TimerCubit timerCubit,
    required DeviceRepository deviceRepository,
  })  : _tempCubit = tempCubit,
        _timerCubit = timerCubit,
        _deviceRepository = deviceRepository,
        super(DataSessionCubitState(session)) {
    _session = session;
    _tempSubscription = _tempCubit.stream.listen(_tempListener);
    _timerSubscription = _timerCubit.stream.listen(_timerListener);
  }

  Future<void> _tempListener(TempCubitState value) async {
    if (!_bloc) {
      final middleTemp =
          value.temp.fold(0.0, (previousValue, element) => previousValue + element.value) / _session.temp.length;

      switch (_session.status) {
        case SessionStatus.heat:
          if (middleTemp >= _session.tempNext) {
            // Нагрелось до нужного.
            _deviceRepository.ten.off();
            _deviceRepository.pump.off();
            _session = SessionModel.fromEntity(_session).copyWith(
              temp: value.temp.map((e) => TempModel.fromEntity(e)).toList(),
              status: SessionStatus.ready,
              timeLast: DateTime.now(),
            );
            await _player.setAsset('assets/sound/normal.wav');
            await _player.play();
          }
          break;
        case SessionStatus.pause:
          if (middleTemp >= _session.tempNext) {
            // Выключим тэн.
            _deviceRepository.ten.off();
          } else if (middleTemp <= _session.tempNext - 1) {
            // Включим тэн.
            _deviceRepository.ten.on();
          }
          break;
        default:
          break;
      }
      _session = SessionModel.fromEntity(_session).copyWith(
        temp: value.temp.map((e) => TempModel.fromEntity(e)).toList(),
        pump: _deviceRepository.pump.status(),
        ten: _deviceRepository.ten.status(),
      );
      emit(DataSessionCubitState(_session));
    }
  }

  Future<void> _timerListener(TimerCubitState state) async {
    if (!_bloc) {
      final last = _session.timeLast;
      switch (_session.status) {
        case SessionStatus.boiling:
        case SessionStatus.pause:
          if (last != null && state.time.difference(last).inMinutes >= _session.timeNext) {
            // Время вышло.
            _deviceRepository.ten.off();
            _deviceRepository.pump.off();
            _session = SessionModel.fromEntity(_session).copyWith(
              timeNext: 0,
              tempNext: 0,
              status: SessionStatus.ready,
              timeLast: DateTime.now(),
            );
            await _player.setAsset('assets/sound/normal.wav');
            await _player.play();
          }
          break;
        default:
          break;
      }
      _session = SessionModel.fromEntity(_session).copyWith(
        timeCurrent: state.time,
        pump: _deviceRepository.pump.status(),
        ten: _deviceRepository.ten.status(),
      );
      emit(DataSessionCubitState(_session));
    }
  }

  void changeTenState(bool value) {
    _bloc = true;
    value ? _deviceRepository.ten.on() : _deviceRepository.ten.off();
    _session = SessionModel.fromEntity(_session).copyWith(ten: _deviceRepository.ten.status());
    emit(DataSessionCubitState(_session));
    _bloc = false;
  }

  void changePumpState(bool value) {
    _bloc = true;
    value ? _deviceRepository.pump.on() : _deviceRepository.pump.off();
    _session = SessionModel.fromEntity(_session).copyWith(pump: _deviceRepository.pump.status());
    emit(DataSessionCubitState(_session));
    _bloc = false;
  }

  void setHeat(bool status, double temp) {
    _bloc = true;
    status ? _deviceRepository.ten.on() : _deviceRepository.ten.off();
    if (!status) _deviceRepository.pump.off();
    _session = SessionModel.fromEntity(_session).copyWith(
      timeLast: status ? DateTime.now() : null,
      tempNext: temp,
      status: status ? SessionStatus.heat : SessionStatus.ready,
      pump: _deviceRepository.pump.status(),
      ten: _deviceRepository.ten.status(),
    );
    emit(DataSessionCubitState(_session));
    _bloc = false;
  }

  void setPause(bool status, double temp, int time) {
    _bloc = true;
    status ? _deviceRepository.ten.on() : _deviceRepository.ten.off();
    if (!status) _deviceRepository.pump.off();
    _session = SessionModel.fromEntity(_session).copyWith(
      timeLast: status ? DateTime.now() : null,
      tempNext: temp,
      timeNext: time,
      status: status ? SessionStatus.pause : SessionStatus.ready,
      pump: _deviceRepository.pump.status(),
      ten: _deviceRepository.ten.status(),
    );
    emit(DataSessionCubitState(_session));
    _bloc = false;
  }

  void setBoiling(bool status, int time) {
    _bloc = true;
    status ? _deviceRepository.ten.on() : _deviceRepository.ten.off();
    _deviceRepository.pump.off();
    _session = SessionModel.fromEntity(_session).copyWith(
      timeLast: status ? DateTime.now() : null,
      tempNext: 98,
      timeNext: time,
      status: status ? SessionStatus.boiling : SessionStatus.ready,
      pump: _deviceRepository.pump.status(),
      ten: _deviceRepository.ten.status(),
    );
    emit(DataSessionCubitState(_session));
    _bloc = false;
  }

  @override
  Future<void> close() async {
    await _tempSubscription.cancel();
    await _timerSubscription.cancel();
    await _player.dispose();

    return super.close();
  }
}
