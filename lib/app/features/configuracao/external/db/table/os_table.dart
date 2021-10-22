import 'package:moor_flutter/moor_flutter.dart';

class OSTable extends Table {
  IntColumn get id => integer()();
  IntColumn get idOS => integer()();
  IntColumn get nroOS => integer()();
  IntColumn get idLibOS => integer()();
  IntColumn get idProprAgr => integer()();
  TextColumn get descrProprAgr => text()();
  RealColumn get areaProgrOS => real()();
  TextColumn get dtInicProgr => text()();
  TextColumn get dtFimProgr => text()();
  IntColumn get tipoOS => integer()();
  IntColumn get idAtiv => integer()();
  IntColumn get idAtivOS => integer()();
}
