import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/turno_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/turno_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'turno_dao.g.dart';

@Injectable(singleton: false)
@UseDao(tables: [TurnoTable])
class TurnoDao extends DatabaseAccessor<DataBase>
    with _$TurnoDaoMixin, GenericDatasource<TurnoModel> {
  TurnoDao(DataBase db) : super(db);

  @override
  Future<int> add(TurnoModel entity) {
    return into(turnoTable).insert(entity.turnoTableData());
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List list) async {
    late int res;
    for (TurnoModel model in list) {
      res = await add(model);
    }
    if (list.length == res) {
      return right(true);
    } else {
      return left(ErrorInsertBDInternal());
    }
  }

  @override
  Future<Either<Failure, List<TurnoModel>>> getAllGeneric() {
    throw UnimplementedError();
  }
}
