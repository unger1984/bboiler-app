import 'package:bboiler/src/domain/enitites/session_entity.dart';

abstract class SessionProvider{
  Future<SessionEntity> loadSession();
  Future<void> saveSession(SessionEntity session);
}
