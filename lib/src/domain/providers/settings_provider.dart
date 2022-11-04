import 'package:bboiler/src/domain/enitites/settings_entity.dart';

abstract class SettingsProvider{
  Future<SettingsEntity> loadSettings();
  Future<void> saveSettings(SettingsEntity settings);
}
