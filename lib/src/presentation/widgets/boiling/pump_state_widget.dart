import 'package:bboiler/src/presentation/cubits/session_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';

@immutable
class PumpStateWidget extends StatelessWidget {
  final bool state;
  const PumpStateWidget({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void handleChangeState(bool value) {
      BlocProvider.of<SessionCubit>(context).changePumpState(value);
    }

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Насос:'),
        FlutterSwitch(
          value: state,
          height: 20,
          width: 50,
          onToggle: handleChangeState,
        ),
      ],
    );
  }
}
