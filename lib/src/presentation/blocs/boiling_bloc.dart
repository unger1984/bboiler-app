import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'boiling_bloc.freezed.dart';

@freezed
class BoilingEvent with _$BoilingEvent {
  const BoilingEvent._();
  const factory BoilingEvent.heat() = HeatBoilingEvent;
  const factory BoilingEvent.pause() = PauseBoilingEvent;
  const factory BoilingEvent.boiling() = BoilingBoilingEvent;
}

@freezed
class BoilingState with _$BoilingState {
  const BoilingState._();
  const factory BoilingState.heat() = HeatBoilingState;
  const factory BoilingState.pause() = PauseBoilingState;
  const factory BoilingState.boiling() = BoilingBoilingState;
}

class BoilingBLoC extends Bloc<BoilingEvent, BoilingState> {
  BoilingBLoC() : super(const HeatBoilingState()) {
    on<BoilingEvent>(
      (event, emitter) => event.map(
        heat: (event) => _heat(event, emitter),
        pause: (event) => _pause(event, emitter),
        boiling: (event) => _boiling(event, emitter),
      ),
    );
  }

  void _heat(__, Emitter<BoilingState> emitter) async {
    emitter(const HeatBoilingState());
  }

  void _pause(__, Emitter<BoilingState> emitter) async {
    emitter(const PauseBoilingState());
  }

  void _boiling(__, Emitter<BoilingState> emitter) async {
    emitter(const BoilingBoilingState());
  }
}
