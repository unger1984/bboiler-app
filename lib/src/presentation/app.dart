import 'package:bboiler/src/domain/enitites/session_entity.dart';
import 'package:bboiler/src/domain/enitites/settings_entity.dart';
import 'package:bboiler/src/domain/providers/settings_provider.dart';
import 'package:bboiler/src/domain/repositories/device_repository.dart';
import 'package:bboiler/src/domain/service_locator.dart';
import 'package:bboiler/src/presentation/blocs/route_bloc.dart';
import 'package:bboiler/src/presentation/blocs/settings_bloc.dart';
import 'package:bboiler/src/presentation/cubits/session_cubit.dart';
import 'package:bboiler/src/presentation/cubits/temp_cubit.dart';
import 'package:bboiler/src/presentation/cubits/timer_cubit.dart';
import 'package:bboiler/src/presentation/widgets/boiling_page.dart';
import 'package:bboiler/src/presentation/widgets/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class App extends StatelessWidget {
  final SessionEntity session;
  final SettingsEntity settings;

  const App({Key? key, required this.settings, required this.session}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<TempCubit>(
            create: (_) => TempCubit(
              tempProvider: ServiceLocator.instance.get<DeviceRepository>().temp,
            ),
          ),
          BlocProvider<TimerCubit>(create: (_) => TimerCubit()),
        ],
        child: Builder(builder: (context) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => SettingsBLoC(
                  settings: settings,
                  settingsProvider: ServiceLocator.instance.get<SettingsProvider>(),
                  deviceRepository: ServiceLocator.instance.get<DeviceRepository>(),
                ),
              ),
              BlocProvider(
                create: (context) => SessionCubit(
                  session: session,
                  tempCubit: BlocProvider.of<TempCubit>(context),
                  timerCubit: BlocProvider.of<TimerCubit>(context),
                  deviceRepository: ServiceLocator.instance.get<DeviceRepository>(),
                ),
              ),
            ],
            child: BlocProvider<RouteBLoC>(
              create: (_) => RouteBLoC(),
              child: BlocBuilder<RouteBLoC, RouteState>(
                builder: (context, state) => state.map(
                  boiling: (state) => BoilingPage(sessionInit: session, settingsInit: settings),
                  settings: (state) => SettingsPage(sessionInit: session, settingsInit: settings),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
