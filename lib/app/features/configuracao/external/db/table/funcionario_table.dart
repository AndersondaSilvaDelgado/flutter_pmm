import 'package:moor_flutter/moor_flutter.dart';

class FuncionarioTable extends Table {
  IntColumn get matricFunc => integer()();
  TextColumn get nomeFunc => text()();
}
