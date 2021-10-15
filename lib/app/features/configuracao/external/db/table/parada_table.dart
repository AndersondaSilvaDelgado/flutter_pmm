import 'package:moor_flutter/moor_flutter.dart';

class ParadaTable extends Table {
  IntColumn get idParada => integer()();
  IntColumn get codParada => integer()();
  TextColumn get descrParada => text()();
}
