import 'package:bboiler/src/domain/enitites/temp_entity.dart';

abstract class TempProvider {
  Future<List<TempEntity>> getTemp();
}
