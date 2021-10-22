import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/oper_motomec_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/oper_motomec_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'oper_motomec_dao.g.dart';

@Injectable(singleton: false)
@UseDao(tables: [OperMotoMecTable])
class OperMotoMecDao extends DatabaseAccessor<DataBase>
    with _$OperMotoMecDaoMixin, GenericDatasource<OperMotoMecModel> {
  OperMotoMecDao(DataBase db) : super(db);

  @override
  Future<int> add(OperMotoMecModel entity) {
    return into(operMotoMecTable).insert(entity.operMotoMecTableData());
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(
      List<OperMotoMecModel> list) async {
    late int res;
    for (OperMotoMecModel model in list) {
      res = await add(model);
    }
    if (list.length == res) {
      return right(true);
    } else {
      return left(ErroInsertBDInternal());
    }
  }

  @override
  Future<Either<Failure, List<OperMotoMecModel>>> getAllGeneric() {
    throw UnimplementedError();
  }
}
