import 'package:flutter/material.dart';

@immutable
class CardTemp extends StatelessWidget {
  final double temp;

  const CardTemp({Key? key, required this.temp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Температура'),
            Expanded(
              child: Center(
                child: Text(
                  '${temp.toStringAsFixed(1)}℃',
                  style: const TextStyle(
                    fontSize: 42,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
