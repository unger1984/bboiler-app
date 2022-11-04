import 'package:bboiler/src/presentation/cubits/session_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

@immutable
class TenPowerWidget extends StatelessWidget {
  final double power;
  const TenPowerWidget({Key? key, required this.power}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void handleChange(dynamic value) {
      BlocProvider.of<SessionCubit>(context).changeTenPower((value as double) / 100);
    }

    return SfSlider(
      value: power * 100,
      min: 0,
      max: 100,
      onChanged: handleChange,
      // showTicks: true,
      // showLabels: true,
      enableTooltip: true,
    );
  }
}
