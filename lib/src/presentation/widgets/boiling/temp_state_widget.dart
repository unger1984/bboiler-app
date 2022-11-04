import 'package:bboiler/src/domain/enitites/temp_entity.dart';
import 'package:flutter/material.dart';

@immutable
class TempStateWidget extends StatelessWidget {
  final TempEntity temp;
  const TempStateWidget({Key? key, required this.temp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('${temp.name}:'),
        Text('${temp.value.toStringAsFixed(1)}℃'),
      ],
    );
  }
}
