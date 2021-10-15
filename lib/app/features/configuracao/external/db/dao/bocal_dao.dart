import 'package:flutter_pmm/app/features/configuracao/external/db/table/bocal_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/bocal_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'bocal_dao.g.dart';

@UseDao(tables: [BocalTable])
class BocalDao extends DatabaseAccessor<DataBase> with _$BocalDaoMixin {
  BocalDao(DataBase db) : super(db);

  Future addBocal(BocalModel entity) {
    return into(bocalTable).insert(entity.bocalTableData());
  }
}
