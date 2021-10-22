import 'package:moor_flutter/moor_flutter.dart';

class EquipTable extends Table {
  IntColumn get idEquip => integer()();
  IntColumn get nroEquip => integer()();
  IntColumn get codClasseEquip => integer()();
  TextColumn get descrClasseEquip => text()();
  IntColumn get codTurno => integer()();
  IntColumn get idCheckList => integer()();
  IntColumn get tipoEquipFert => integer()();
  RealColumn get horimetroEquip => real()();
  RealColumn get medicaoEquipFert => real()();
  IntColumn get tipoEquip => integer()();
  IntColumn get classifEquip => integer()();
}
