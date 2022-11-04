import 'package:bboiler/src/presentation/blocs/boiling_bloc.dart';
import 'package:bboiler/src/presentation/widgets/boiling/boiling_boiling.dart';
import 'package:bboiler/src/presentation/widgets/boiling/boiling_heat.dart';
import 'package:bboiler/src/presentation/widgets/boiling/boiling_pause.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toggle_switch/toggle_switch.dart';

@immutable
class BoilingMain extends StatefulWidget {
  const BoilingMain({Key? key}) : super(key: key);

  @override
  State<BoilingMain> createState() => _BoilingMainState();
}

class _BoilingMainState extends State<BoilingMain> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BoilingBLoC, BoilingState>(
      builder: (context, state) {
        int initialLabelIndex = state.map(heat: (_) => 0, pause: (_) => 1, boiling: (_) => 2);

        void handleSitch(int? index) {
          switch (index) {
            case 1:
              BlocProvider.of<BoilingBLoC>(context).add(const PauseBoilingEvent());
              break;
            case 2:
              BlocProvider.of<BoilingBLoC>(context).add(const BoilingBoilingEvent());
              break;
            case 0:
            default:
              BlocProvider.of<BoilingBLoC>(context).add(const HeatBoilingEvent());
              break;
          }
        }

        return Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ToggleSwitch(
                    minWidth: 100,
                    initialLabelIndex: initialLabelIndex,
                    totalSwitches: 3,
                    labels: const ['Нагрев', 'Пауза', 'Кипячение'],
                    animate: true,
                    curve: Curves.bounceInOut,
                    onToggle: handleSitch,
                  ),
                ),
                state.map(
                  heat: (_) => const BoilingHeat(),
                  pause: (_) => const BoilingPause(),
                  boiling: (_) => const BoilingBoiling(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
