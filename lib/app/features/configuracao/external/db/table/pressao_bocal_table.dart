import 'package:moor_flutter/moor_flutter.dart';

class PressaoBocalTable extends Table {
  IntColumn get idPressaoBocal => integer()();
  IntColumn get idBocal => integer()();
  IntColumn get valorPressao => integer()();
  IntColumn get valorVeloc => integer()();
}
