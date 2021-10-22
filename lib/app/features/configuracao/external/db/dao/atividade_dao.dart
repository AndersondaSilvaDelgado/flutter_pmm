import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/atividade_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/atividade_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'atividade_dao.g.dart';

@Injectable(singleton: false)
@UseDao(tables: [AtividadeTable])
class AtividadeDao extends DatabaseAccessor<DataBase>
    with _$AtividadeDaoMixin, GenericDatasource<AtividadeModel> {
  AtividadeDao(DataBase db) : super(db);

  @override
  Future<int> add(AtividadeModel entity) {
    return into(atividadeTable).insert(entity.atividadeTableData());
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List list) async {
    late int res;
    for (AtividadeModel model in list) {
      res = await add(model);
    }
    if (list.length == res) {
      return right(true);
    } else {
      return left(ErroInsertBDInternal());
    }
  }

  @override
  Future<Either<Failure, List<AtividadeModel>>> getAllGeneric() {
    throw UnimplementedError();
  }
}
