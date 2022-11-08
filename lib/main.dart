import 'dart:async';

import 'package:bboiler/src/data/providers/relay_provider_impl.dart';
import 'package:bboiler/src/data/providers/session_provider_impl.dart';
import 'package:bboiler/src/data/providers/settings_provider_impl.dart';
import 'package:bboiler/src/data/providers/temp_provider_impl.dart';
import 'package:bboiler/src/data/repositories/device_repositpry_impl.dart';
import 'package:bboiler/src/domain/app_bloc_observer.dart';
import 'package:bboiler/src/domain/providers/session_provider.dart';
import 'package:bboiler/src/domain/providers/settings_provider.dart';
import 'package:bboiler/src/domain/repositories/device_repository.dart';
import 'package:bboiler/src/domain/service_locator.dart';
import 'package:bboiler/src/presentation/app.dart';
import 'package:bboiler/src/utils/logger.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const baseUrl = 'https://owa.famil.ru/s8zf4hss2lj9fv';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await DesktopWindow.toggleFullScreen();

  final settingsProvider = SettingsProviderImpl();
  final sessionProvider = SessionProviderImpl();

  final settings = await settingsProvider.loadSettings();
  final session = await sessionProvider.loadSession();

  final tenProvider = RelayProviderImpl(pin: settings.tenPin);
  final pumpProvider = RelayProviderImpl(pin: settings.pumpPin);
  final tempProvider = TempProviderImpl();

  final deviceRepository = DeviceRepositoryImpl(
    ten: tenProvider,
    pump: pumpProvider,
    temp: tempProvider,
  );

  ServiceLocator.instance.set<SettingsProvider>(settingsProvider);
  ServiceLocator.instance.set<SessionProvider>(sessionProvider);
  ServiceLocator.instance.set<DeviceRepository>(deviceRepository);

  runZonedGuarded<void>(
    () {
      Bloc.observer = AppBlocObserver.instance();
      Bloc.transformer = bloc_concurrency.sequential<Object?>();
      runApp(App(session: session, settings: settings));
    },
    (err, stackTrace) => logger.e("Unhandled error", err, stackTrace),
  );
}
