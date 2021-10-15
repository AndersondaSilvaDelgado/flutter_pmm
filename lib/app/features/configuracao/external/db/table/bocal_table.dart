import 'package:moor_flutter/moor_flutter.dart';

class BocalTable extends Table {
  IntColumn get idBocal => integer()();
  IntColumn get codBocal => integer()();
  TextColumn get descrBocal => text()();
}
