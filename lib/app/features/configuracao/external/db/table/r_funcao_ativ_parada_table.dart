import 'package:moor_flutter/moor_flutter.dart';

class RFuncaoAtivParadaTable extends Table {
  IntColumn get idRFuncaoAtivParada => integer()();
  IntColumn get idAtivParada => integer()();
  IntColumn get codFuncao => integer()();
  IntColumn get tipoFuncao => integer()();
}
