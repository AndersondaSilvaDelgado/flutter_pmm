import 'package:moor_flutter/moor_flutter.dart';

class ItemCheckListTable extends Table {
  IntColumn get idItemCheckList => integer()();
  IntColumn get idCheckList => integer()();
  TextColumn get descrItemCheckList => text()();
}
