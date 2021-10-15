import 'package:moor_flutter/moor_flutter.dart';

class TurnoTable extends Table {
  IntColumn get idTurno => integer()();
  IntColumn get codTurno => integer()();
  IntColumn get nroTurno => integer()();
  TextColumn get descTurno => text()();
}
