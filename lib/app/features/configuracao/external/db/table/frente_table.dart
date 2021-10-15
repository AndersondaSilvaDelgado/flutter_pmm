import 'package:moor_flutter/moor_flutter.dart';

class FrenteTable extends Table {
  IntColumn get idFrente => integer()();
  IntColumn get codFrente => integer()();
  TextColumn get descrFrente => text()();
}
