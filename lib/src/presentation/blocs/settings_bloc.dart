import 'package:bboiler/src/data/models/settings_model.dart';
import 'package:bboiler/src/domain/enitites/settings_entity.dart';
import 'package:bboiler/src/domain/providers/settings_provider.dart';
import 'package:bboiler/src/domain/repositories/device_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_bloc.freezed.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const SettingsEvent._();
  const factory SettingsEvent.save({required int tenPin, required int pumpPin}) = SaveSettingsEvent;
}

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();
  const factory SettingsState.data(SettingsEntity data) = DataSettingsState;
}

class SettingsBLoC extends Bloc<SettingsEvent, SettingsState> {
  late SettingsEntity _settings;
  final SettingsProvider _settingsProvider;
  final DeviceRepository _deviceRepository;

  SettingsBLoC({
    required SettingsEntity settings,
    required SettingsProvider settingsProvider,
    required DeviceRepository deviceRepository,
  })  : _settingsProvider = settingsProvider,
        _deviceRepository = deviceRepository,
        super(DataSettingsState(settings)) {
    _settings = settings;
    on<SettingsEvent>(
      (event, emitter) => event.map(
        save: (event) => _save(event, emitter),
      ),
    );
  }

  Future<void> _save(SaveSettingsEvent event, Emitter<SettingsState> emitter) async {
    _settings = SettingsModel.fromEntity(_settings).copyWith(tenPin: event.tenPin, pumpPin: event.pumpPin);
    _settingsProvider.saveSettings(_settings);
    if (_deviceRepository.ten.getPin() != event.tenPin) _deviceRepository.ten.changePin(event.tenPin);
    if (_deviceRepository.pump.getPin() != event.pumpPin) _deviceRepository.pump.changePin(event.pumpPin);
    emitter(DataSettingsState(_settings));
  }
}
