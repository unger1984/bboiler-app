import 'package:bboiler/src/domain/enitites/session_entity.dart';
import 'package:bboiler/src/presentation/cubits/session_cubit.dart';
import 'package:bboiler/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class BoilingBoiling extends StatefulWidget {
  const BoilingBoiling({Key? key}) : super(key: key);

  @override
  State<BoilingBoiling> createState() => _BoilingBoilingState();
}

class _BoilingBoilingState extends State<BoilingBoiling> {
  final timeEditController = TextEditingController();
  final focusNode = FocusNode();

  void focusListener() {
    if (focusNode.hasFocus) {
      timeEditController.selection = TextSelection(baseOffset: 0, extentOffset: timeEditController.text.length);
    }
  }

  @override
  void initState() {
    final session = BlocProvider.of<SessionCubit>(context).state.data;
    timeEditController.text = session.timeNext.toString();
    super.initState();
    focusNode.addListener(focusListener);
    focusNode.requestFocus();
  }

  @override
  void dispose() {
    focusNode.removeListener(focusListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final session = BlocProvider.of<SessionCubit>(context, listen: true).state.data;
    final isOn = session.status == SessionStatus.boiling;
    final timeLast = session.timeLast;

    void handleBoiling() {
      final time = int.tryParse(timeEditController.value.text);
      if (time != null && time >= 0) {
        BlocProvider.of<SessionCubit>(context).setBoiling(!isOn, time);
      }
    }

    void handleSubmit(_) {
      handleBoiling();
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 100,
          child: TextField(
            textAlign: TextAlign.end,
            enabled: !isOn,
            controller: timeEditController,
            focusNode: focusNode,
            onSubmitted: handleSubmit,
            decoration: const InputDecoration(labelText: "Мин."),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
        ),
        const SizedBox(width: 50),
        ElevatedButton(
          onPressed: handleBoiling,
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
