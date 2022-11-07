import 'dart:convert';
import 'dart:io';

import 'package:bboiler/src/data/models/session_model.dart';
import 'package:bboiler/src/domain/enitites/session_entity.dart';
import 'package:bboiler/src/domain/providers/session_provider.dart';
import 'package:path_provider/path_provider.dart';

class SessionProviderImpl extends SessionProvider {
  final String _sessionFile = 'bb_session.json';

  @override
  Future<SessionEntity> loadSession() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/$_sessionFile');
    try {
      final content = await file.readAsString();

      return SessionModel.fromJson(jsonDecode(content));
    } catch (exc) {
      return _newSession();
    }
  }

  @override
  Future<void> saveSession(SessionEntity session) async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/$_sessionFile');
    await file.writeAsString(jsonEncode(SessionModel.fromEntity(session).toJson()));
  }

  SessionEntity _newSession() {
    return SessionModel(
      status: SessionStatus.ready,
      temp: [],
      tempNext: 0,
      timeNext: 0,
      waitMin: 0,
      pause: 0,
      hop: 0,
      ten: false,
      pump: false,
      manualTen: false,
      manualPump: false,
      timeCurrent: DateTime.now(),
    );
  }
}
