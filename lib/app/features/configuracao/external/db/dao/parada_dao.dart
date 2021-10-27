import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/parada_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/parada_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'parada_dao.g.dart';

@Injectable(singleton: false)
@UseDao(tables: [ParadaTable])
class ParadaDao extends DatabaseAccessor<DataBase>
    with _$ParadaDaoMixin, GenericDatasource<ParadaModel> {
  ParadaDao(DataBase db) : super(db);

  @override
  Future<int> add(ParadaModel entity) {
    return into(paradaTable).insert(entity.paradaTableData());
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List list) async {
    late int res;
    for (ParadaModel model in list) {
      res = await add(model);
    }
    if (list.length == res) {
      return right(true);
    } else {
      return left(ErrorInsertBDInternal());
    }
  }

  @override
  Future<Either<Failure, List<ParadaModel>>> getAllGeneric() {
    throw UnimplementedError();
  }
}
