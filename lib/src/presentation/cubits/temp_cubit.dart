import 'dart:async';

import 'package:bboiler/src/domain/enitites/temp_entity.dart';
import 'package:bboiler/src/domain/providers/temp_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'temp_cubit.freezed.dart';

@freezed
class TempCubitState with _$TempCubitState {
  const TempCubitState._();
  const factory TempCubitState.data(List<TempEntity> temp) = DataTempCubitState;
}

class TempCubit extends Cubit<TempCubitState> {
  final TempProvider _tempProvider;
  late final Timer? _timer;

  TempCubit({required TempProvider tempProvider})
      : _tempProvider = tempProvider,
        super(const DataTempCubitState([])) {
    _timer = Timer.periodic(const Duration(seconds: 1), _handleGetTemp);
  }

  Future<void> _handleGetTemp(__) async {
    final temp = await _tempProvider.getTemp();
    emit(DataTempCubitState(temp));
  }

  @override
  Future<void> close() {
    _timer?.cancel();

    return super.close();
  }
}
