import 'package:moor_flutter/moor_flutter.dart';

class FuncTable extends Table {
  IntColumn get matricFunc => integer()();
  TextColumn get nomeFunc => text()();
}
