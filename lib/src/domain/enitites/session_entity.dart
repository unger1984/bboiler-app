import 'package:bboiler/src/domain/enitites/temp_entity.dart';

enum SessionStatus {
  ready, // Ждет включения.
  heat, // Нагрев до заданной температуры.
  malt, // Засыпь.
  pause, // Пауза.
  mashOut, // Мешаут.
  filter, // Промывка.
  boiling, // Кипячение.
  hop, // Засыпь хмеля.
  done, // Варка завершена.
}

class SessionEntity {
  final SessionStatus status;
  final List<TempEntity> temp;
  final double tempNext;
  final int timeNext;
  final int waitMin;
  final int pause;
  final int hop;
  final bool ten;
  final bool pump;
  final bool manualTen;
  final bool manualPump;
  final DateTime timeCurrent;
  final DateTime? timeStart;
  final DateTime? timeLast;

  const SessionEntity({
    required this.status,
    required this.temp,
    required this.tempNext,
    required this.timeNext,
    required this.waitMin,
    required this.pause,
    required this.hop,
    required this.ten,
    required this.pump,
    required this.manualTen,
    required this.manualPump,
    required this.timeCurrent,
    this.timeStart,
    this.timeLast,
  });
}
