import 'package:bboiler/src/presentation/cubits/session_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';

@immutable
class TenStateWidget extends StatelessWidget {
  final bool ten;
  const TenStateWidget({Key? key, required this.ten}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void handleChangeState(bool value) {
      BlocProvider.of<SessionCubit>(context).changeTenState(value);
    }

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('ТЭН:'),
        FlutterSwitch(
          value: ten,
          height: 20,
          width: 50,
          onToggle: handleChangeState,
        ),
      ],
    );
  }
}
