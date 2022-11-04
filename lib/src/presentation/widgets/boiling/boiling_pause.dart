import 'package:bboiler/src/domain/enitites/session_entity.dart';
import 'package:bboiler/src/presentation/cubits/session_cubit.dart';
import 'package:bboiler/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class BoilingPause extends StatefulWidget {
  const BoilingPause({Key? key}) : super(key: key);

  @override
  State<BoilingPause> createState() => _BoilingPauseState();
}

class _BoilingPauseState extends State<BoilingPause> {
  final tempEditController = TextEditingController();
  final timeEditController = TextEditingController();

  @override
  void initState() {
    final session = BlocProvider.of<SessionCubit>(context).state.data;
    tempEditController.text = session.tempNext.toString();
    timeEditController.text = session.timeNext.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final session = BlocProvider.of<SessionCubit>(context, listen: true).state.data;
    final isOn = session.status == SessionStatus.pause;
    final timeLast = session.timeLast;

    void handlePause() {
      final temp = double.tryParse(tempEditController.value.text);
      final time = int.tryParse(timeEditController.value.text);
      if (temp != null && time != null && temp >= 0 && time >= 0) {
        BlocProvider.of<SessionCubit>(context).setPause(!isOn, temp, time);
      }
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 100,
          child: TextField(
            textAlign: TextAlign.end,
            enabled: !isOn,
            controller: tempEditController,
            decoration: const InputDecoration(labelText: "℃"),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}')),
            ],
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(
          width: 100,
          child: TextField(
            textAlign: TextAlign.end,
            enabled: !isOn,
            controller: timeEditController,
            decoration: const InputDecoration(labelText: "Мин."),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        const SizedBox(width: 50),
        ElevatedButton(
          onPressed: handlePause,
          style: ElevatedButton.styleFrom(
            backgroundColor: isOn ? Colors.red : Colors.blue,
          ),
          child: Text(isOn ? 'Выключить' : 'Включить'),
        ),
        const SizedBox(width: 10),
        if (isOn && timeLast != null) Text(durationToTime(DateTime.now().difference(timeLast))),
      ],
    );
  }
}
