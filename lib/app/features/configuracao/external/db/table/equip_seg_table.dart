import 'package:moor_flutter/moor_flutter.dart';

class EquipSegTable extends Table {
  IntColumn get idEquip => integer()();
  IntColumn get nroEquip => integer()();
  IntColumn get codClasseEquip => integer()();
  TextColumn get descrClasseEquip => text()();
  IntColumn get tipoEquip => integer()();
}
