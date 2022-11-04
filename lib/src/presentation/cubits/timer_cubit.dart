import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_cubit.freezed.dart';

@freezed
class TimerCubitState with _$TimerCubitState {
  const TimerCubitState._();
  const factory TimerCubitState.data(DateTime time) = DataTimerCubitState;
}

class TimerCubit extends Cubit<TimerCubitState> {
  late final Timer? _timer;

  TimerCubit() : super(DataTimerCubitState(DateTime.now())) {
    _timer = Timer.periodic(const Duration(seconds: 1), _handleGetTime);
  }

  void _handleGetTime(_) {
    emit(DataTimerCubitState(DateTime.now()));
  }

  @override
  Future<void> close() {
    _timer?.cancel();

    return super.close();
  }
}
