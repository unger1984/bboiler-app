import 'dart:async';

import 'package:bboiler/src/utils/utils.dart';
import 'package:flutter/material.dart';

@immutable
class TimerWidget extends StatefulWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  Timer? _timer;
  bool start = false;
  bool stop = true;
  Duration duration = Duration.zero;

  void _handleTimer(_) {
    setState(() {
      duration += const Duration(seconds: 1);
    });
  }

  void handlePlayPause() {
    if (stop) {
      duration = Duration.zero;
    }
    if (start && _timer != null) {
      _timer?.cancel();
    } else {
      _timer = Timer.periodic(const Duration(seconds: 1), _handleTimer);
    }
    setState(() {
      stop = false;
      start = !start;
      _timer = _timer;
    });
  }

  void handleStop() {
    _timer?.cancel();
    duration = Duration.zero;
    setState(() {
      stop = true;
      start = false;
      _timer = _timer;
      duration = duration;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: Text(durationToTime(duration))),
        Row(
          children: [
            IconButton(onPressed: handlePlayPause, icon: Icon(start ? Icons.pause_circle : Icons.play_circle)),
            IconButton(onPressed: handleStop, icon: const Icon(Icons.stop_circle)),
          ],
        ),
      ],
    );
  }
}
