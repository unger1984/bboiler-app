import 'package:bboiler/src/domain/enitites/session_entity.dart';
import 'package:bboiler/src/domain/enitites/settings_entity.dart';
import 'package:flutter/material.dart';

@immutable
class CardTen extends StatelessWidget {
  final SessionEntity session;
  final SettingsEntity settings;

  const CardTen({Key? key, required this.session, required this.settings}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MaterialColor color;
    color = session.ten ? Colors.green : Colors.deepOrange;

    return SizedBox(
      height: 200,
      child: Card(
        color: color,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('ТЭН'),
            Expanded(
              child: Center(
                child: Text(
                  session.ten ? 'Включен' : 'Отключен',
                  style: const TextStyle(
                    fontSize: 35,
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
