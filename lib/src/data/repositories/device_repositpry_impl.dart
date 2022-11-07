import 'package:bboiler/src/domain/providers/relay_provider.dart';
import 'package:bboiler/src/domain/providers/temp_provider.dart';
import 'package:bboiler/src/domain/repositories/device_repository.dart';

class DeviceRepositoryImpl extends DeviceRepository {
  final TempProvider _temp;
  final RelayProvider _ten;
  final RelayProvider _pump;

  DeviceRepositoryImpl({
    required RelayProvider ten,
    required RelayProvider pump,
    required TempProvider temp,
  })  : _ten = ten,
        _pump = pump,
        _temp = temp;

  @override
  RelayProvider get ten => _ten;

  @override
  RelayProvider get pump => _pump;

  @override
  TempProvider get temp => _temp;
}
