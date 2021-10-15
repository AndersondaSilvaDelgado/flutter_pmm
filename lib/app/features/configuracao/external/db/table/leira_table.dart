import 'package:moor_flutter/moor_flutter.dart';

class LeiraTable extends Table {
  IntColumn get idLeira => integer()();
  IntColumn get codLeira => integer()();
  IntColumn get statusLeira => integer()();
}
