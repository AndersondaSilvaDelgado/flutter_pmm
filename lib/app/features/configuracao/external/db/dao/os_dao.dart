import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/os_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/os_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'os_dao.g.dart';

@Injectable(singleton: false)
@UseDao(tables: [OSTable])
class OSDao extends DatabaseAccessor<DataBase>
    with _$OSDaoMixin, GenericDatasource<OSModel> {
  OSDao(DataBase db) : super(db);

  @override
  Future<int> add(OSModel entity) {
    return into(oSTable).insert(entity.osTableData());
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List list) async {
    late int res;
    for (OSModel model in list) {
      res = await add(model);
    }
    if (list.length == res) {
      return right(true);
    } else {
      return left(ErroInsertBDInternal());
    }
  }

  @override
  Future<Either<Failure, List<OSModel>>> getAllGeneric() {
    throw UnimplementedError();
  }
}
