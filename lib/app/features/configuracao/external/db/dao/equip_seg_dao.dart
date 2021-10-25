import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/equip_seg_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/equip_seg_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'equip_seg_dao.g.dart';

@Injectable(singleton: false)
@UseDao(tables: [EquipSegTable])
class EquipSegDao extends DatabaseAccessor<DataBase>
    with _$EquipSegDaoMixin, GenericDatasource<EquipSegModel> {
  EquipSegDao(DataBase db) : super(db);

  @override
  Future<int> add(EquipSegModel entity) {
    return into(equipSegTable).insert(entity.equipSegTableData());
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List list) async {
    late int res;
    for (EquipSegModel model in list) {
      res = await add(model);
    }
    if (list.length == res) {
      return right(true);
    } else {
      return left(ErroInsertBDInternal());
    }
  }

  @override
  Future<Either<Failure, List<EquipSegModel>>> getAllGeneric() {
    throw UnimplementedError();
  }
}
