import 'package:moor_flutter/moor_flutter.dart';

class PropriedadeTable extends Table {
  IntColumn get idPropriedade => integer()();
  TextColumn get descrPropriedade => text()();
}
