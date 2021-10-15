import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/atividade_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/atividade_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'atividade_dao.g.dart';

@UseDao(tables: [AtividadeTable])
class AtividadeDao extends DatabaseAccessor<DataBase>
    with _$AtividadeDaoMixin, GenericDatasource<AtividadeModel> {
  AtividadeDao(DataBase db) : super(db);

  Future addAtividade(AtividadeModel entity) {
    return into(atividadeTable).insert(entity.atividadeTableData());
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<AtividadeModel> list) {
    throw UnimplementedError();
  }

  @override
  Future<List<AtividadeModel>> getAllGeneric() {
    throw UnimplementedError();
  }
}