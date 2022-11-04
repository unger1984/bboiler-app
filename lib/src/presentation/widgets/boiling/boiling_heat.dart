import 'package:bboiler/src/domain/enitites/session_entity.dart';
import 'package:bboiler/src/presentation/cubits/session_cubit.dart';
import 'package:bboiler/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class BoilingHeat extends StatefulWidget {
  const BoilingHeat({Key? key}) : super(key: key);

  @override
  State<BoilingHeat> createState() => _BoilingHeatState();
}

class _BoilingHeatState extends State<BoilingHeat> {
  final textEditController = TextEditingController();

  @override
  void initState() {
    textEditController.text = BlocProvider.of<SessionCubit>(context).state.data.tempNext.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final session = BlocProvider.of<SessionCubit>(context, listen: true).state.data;
    final isOn = session.status == SessionStatus.heat;
    final timeLast = session.timeLast;

    void handleHeat() {
      final val = double.tryParse(textEditController.value.text);
      if (val != null && val > 0 && val <= 100) {
        BlocProvider.of<SessionCubit>(context).setHeat(!isOn, val);
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
            controller: textEditController,
            decoration: const InputDecoration(labelText: "℃"),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}')),
            ],
          ),
        ),
        const SizedBox(width: 50),
        ElevatedButton(
          onPressed: handleHeat,
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
