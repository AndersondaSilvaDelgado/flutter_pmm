import 'package:moor_flutter/moor_flutter.dart';

class ConfigTable extends Table {
  IntColumn get idConfig => integer()();
  IntColumn get equipConfig => integer()();
  TextColumn get senhaConfig => text()();
}
