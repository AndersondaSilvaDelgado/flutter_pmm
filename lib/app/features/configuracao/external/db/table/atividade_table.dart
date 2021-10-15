import 'package:moor_flutter/moor_flutter.dart';

class AtividadeTable extends Table {
  IntColumn get idAtiv => integer()();
  IntColumn get codAtiv => integer()();
  TextColumn get descrAtiv => text()();
}
