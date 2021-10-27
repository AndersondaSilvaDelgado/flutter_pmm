import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/equip_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/equip_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'equip_dao.g.dart';

@Injectable(singleton: false)
@UseDao(tables: [EquipTable])
class EquipDao extends DatabaseAccessor<DataBase>
    with _$EquipDaoMixin, GenericDatasource<EquipModel> {
  EquipDao(DataBase db) : super(db);

  @override
  Future<int> add(EquipModel entity) {
    return into(equipTable).insert(entity.equipTableData());
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List list) async {
    late int res;
    for (EquipModel model in list) {
      res = await add(model);
    }
    if (list.length == res) {
      return right(true);
    } else {
      return left(ErrorInsertBDInternal());
    }
  }

  @override
  Future<Either<Failure, List<EquipModel>>> getAllGeneric() {
    throw UnimplementedError();
  }
}
