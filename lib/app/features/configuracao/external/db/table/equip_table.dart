import 'package:moor_flutter/moor_flutter.dart';

class EquipTable extends Table {
  IntColumn get idEquip => integer()();
  IntColumn get nroEquip => integer()();
  IntColumn get codClasseEquip => integer()();
  TextColumn get descrClasseEquip => text()();
  IntColumn get codTurno => integer()();
  IntColumn get idCheckList => integer()();
  IntColumn get tipoEquipFert => integer()();
  IntColumn get horimetroEquip => integer()();
  IntColumn get medicaoEquipFert => integer()();
  IntColumn get tipoEquip => integer()();
  IntColumn get classifEquip => integer()();
}
