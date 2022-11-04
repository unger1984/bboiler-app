import 'package:bboiler/src/domain/app_services.dart';
import 'package:bboiler/src/domain/providers/relay_provider.dart';
import 'package:bboiler/src/domain/providers/session_provider.dart';
import 'package:bboiler/src/domain/providers/settings_provider.dart';
import 'package:bboiler/src/domain/providers/temp_provider.dart';

class AppServiceImpl extends AppServices {
  final TempProvider _tempProvider;
  final SettingsProvider _settingsProvider;
  final SessionProvider _sessionProvider;

  AppServiceImpl({
    required TempProvider tempProvider,
    required SettingsProvider settingsProvider,
    required SessionProvider sessionProvider,
    required RelayProvider pumpProvider,
  })  : _tempProvider = tempProvider,
        _settingsProvider = settingsProvider,
        _sessionProvider = sessionProvider,
        super();

  @override
  SessionProvider get sessionProvider => _sessionProvider;

  @override
  SettingsProvider get settingsProvider => _settingsProvider;

  @override
  TempProvider get tempProvider => _tempProvider;
}
