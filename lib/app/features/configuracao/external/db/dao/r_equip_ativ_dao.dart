import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/r_equip_ativ_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/r_equip_ativ_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'r_equip_ativ_dao.g.dart';

@Injectable(singleton: false)
@UseDao(tables: [REquipAtivTable])
class REquipAtivDao extends DatabaseAccessor<DataBase>
    with _$REquipAtivDaoMixin, GenericDatasource<REquipAtivModel> {
  REquipAtivDao(DataBase db) : super(db);

  @override
  Future<int> add(REquipAtivModel entity) {
    return into(rEquipAtivTable).insert(entity.rEquipAtivTableData());
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List list) async {
    late int res;
    for (REquipAtivModel model in list) {
      res = await add(model);
    }
    if (list.length == res) {
      return right(true);
    } else {
      return left(ErrorInsertBDInternal());
    }
  }

  @override
  Future<Either<Failure, List<REquipAtivModel>>> getAllGeneric() {
    throw UnimplementedError();
  }
}
