import 'package:bboiler/src/domain/enitites/session_entity.dart';
import 'package:bboiler/src/domain/enitites/settings_entity.dart';
import 'package:bboiler/src/domain/enitites/temp_entity.dart';
import 'package:bboiler/src/presentation/blocs/boiling_bloc.dart';
import 'package:bboiler/src/presentation/blocs/settings_bloc.dart';
import 'package:bboiler/src/presentation/cubits/session_cubit.dart';
import 'package:bboiler/src/presentation/widgets/boiling/boiling_main.dart';
import 'package:bboiler/src/presentation/widgets/boiling/card_temp.dart';
import 'package:bboiler/src/presentation/widgets/boiling/pump_state_widget.dart';
import 'package:bboiler/src/presentation/widgets/boiling/temp_state_widget.dart';
import 'package:bboiler/src/presentation/widgets/boiling/ten_power_widget.dart';
import 'package:bboiler/src/presentation/widgets/boiling/ten_state_widget.dart';
import 'package:bboiler/src/presentation/widgets/boiling/timer_widget.dart';
import 'package:bboiler/src/presentation/widgets/common/bottom_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class BoilingPage extends StatelessWidget {
  final SettingsEntity settingsInit;
  final SessionEntity sessionInit;

  const BoilingPage({Key? key, required this.sessionInit, required this.settingsInit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<BoilingBLoC>(
        create: (_) => BoilingBLoC(),
        child: BlocBuilder<SettingsBLoC, SettingsState>(
          builder: (context, settings) {
            return BlocBuilder<SessionCubit, SessionCubitState>(
              builder: (context, session) {
                final temp = session.data.temp;
                final middleTemp =
                    temp.fold(0.0, (previousValue, element) => previousValue + element.value) / temp.length;

                return Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: CardTemp(temp: middleTemp),
                              ),
                            ],
                          ),
                          const BoilingMain(),
                        ],
                      ),
                    ),
                    Card(
                      child: Container(
                        width: 300,
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'ТЕМПЕРАТУРА',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            ...temp.map((e) => TempStateWidget(temp: e)).toList(),
                            TempStateWidget(
                              temp: TempEntity(
                                name: 'Средняя',
                                value: middleTemp,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'ТЭН',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            TenStateWidget(ten: session.data.ten),
                            TenPowerWidget(power: session.data.tenPower),
                            const SizedBox(height: 5),
                            const Text(
                              'НАСОС',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            PumpStateWidget(state: session.data.pump),
                            const SizedBox(height: 5),
                            const Text(
                              'ТАЙМЕРЫ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            const TimerWidget(),
                            const TimerWidget(),
                            const TimerWidget(),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
      bottomNavigationBar: const BottomPanel(),
    );
  }
}
