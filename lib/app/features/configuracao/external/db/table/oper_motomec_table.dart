import 'package:moor_flutter/moor_flutter.dart';

class OperMotoMecTable extends Table {
  IntColumn get idOperMotoMec => integer()();
  IntColumn get codOperMotoMec => integer()();
  TextColumn get descrOperMotoMec => text()();
  IntColumn get codFuncaoOperMotoMec => integer()();
  IntColumn get posOperMotoMec => integer()();
  IntColumn get tipoOperMotoMec => integer()();
  IntColumn get aplicOperMotoMec => integer()();
  IntColumn get funcaoOperMotoMec => integer()();
}
