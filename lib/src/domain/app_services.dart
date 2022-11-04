import 'package:bboiler/src/domain/providers/session_provider.dart';
import 'package:bboiler/src/domain/providers/settings_provider.dart';
import 'package:bboiler/src/domain/providers/temp_provider.dart';

abstract class AppServices {
  const AppServices();

  TempProvider get tempProvider;
  SettingsProvider get settingsProvider;
  SessionProvider get sessionProvider;
}
