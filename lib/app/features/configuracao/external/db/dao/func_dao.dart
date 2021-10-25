import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/func_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/func_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'func_dao.g.dart';

@Injectable(singleton: false)
@UseDao(tables: [FuncTable])
class FuncDao extends DatabaseAccessor<DataBase>
    with _$FuncDaoMixin, GenericDatasource<FuncModel> {
  FuncDao(DataBase db) : super(db);

  @override
  Future<int> add(FuncModel entity) {
    return into(funcTable).insert(entity.funcTableData());
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List list) async {
    late int res;
    for (FuncModel model in list) {
      res = await add(model);
    }
    if (list.length == res) {
      return right(true);
    } else {
      return left(ErroInsertBDInternal());
    }
  }

  @override
  Future<Either<Failure, List<FuncModel>>> getAllGeneric() {
    throw UnimplementedError();
  }
}
