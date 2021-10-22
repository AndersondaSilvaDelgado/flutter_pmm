import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/r_os_ativ_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/r_os_ativ_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'r_os_ativ_dao.g.dart';

@Injectable(singleton: false)
@UseDao(tables: [ROSAtivTable])
class ROSAtivDao extends DatabaseAccessor<DataBase>
    with _$ROSAtivDaoMixin, GenericDatasource<ROSAtivModel> {
  ROSAtivDao(DataBase db) : super(db);

  @override
  Future<int> add(ROSAtivModel entity) {
    return into(rOSAtivTable).insert(entity.rOSAtivTableData());
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<ROSAtivModel> list) async {
    late int res;
    for (ROSAtivModel model in list) {
      res = await add(model);
    }
    if (list.length == res) {
      return right(true);
    } else {
      return left(ErroInsertBDInternal());
    }
  }

  @override
  Future<Either<Failure, List<ROSAtivModel>>> getAllGeneric() {
    throw UnimplementedError();
  }
}
