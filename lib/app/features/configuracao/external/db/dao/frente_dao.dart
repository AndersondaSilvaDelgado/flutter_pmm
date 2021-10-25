import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/frente_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/frente_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'frente_dao.g.dart';

@Injectable(singleton: false)
@UseDao(tables: [FrenteTable])
class FrenteDao extends DatabaseAccessor<DataBase>
    with _$FrenteDaoMixin, GenericDatasource<FrenteModel> {
  FrenteDao(DataBase db) : super(db);

  @override
  Future<int> add(FrenteModel entity) {
    return into(frenteTable).insert(entity.frenteTableData());
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List list) async {
    late int res;
    for (FrenteModel model in list) {
      res = await add(model);
    }
    if (list.length == res) {
      return right(true);
    } else {
      return left(ErroInsertBDInternal());
    }
  }

  @override
  Future<Either<Failure, List<FrenteModel>>> getAllGeneric() {
    throw UnimplementedError();
  }
}
