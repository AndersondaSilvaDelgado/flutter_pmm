import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/atividade.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/atividade_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/atividade_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/atividade_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'atividade_repository.g.dart';

@Injectable(singleton: false)
class AtividadeRepositoryImpl extends GenericRepository<Atividade> {
  final AtividadeDatasourceWeb datasourceWeb;
  final AtividadeDao datasourceDataBase;
  AtividadeRepositoryImpl(
    this.datasourceWeb,
    this.datasourceDataBase,
  );

  @override
  Future<Either<Failure, List<Atividade>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) => right(r),
      );
    } catch (e) {
      return Left(ErroReturnRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(
      List<Atividade> atividadeList) async {
    try {
      var atividadeModelList = [];
      for (Atividade atividade in atividadeList) {
        AtividadeModel model = AtividadeModel(
          idAtiv: atividade.idAtiv,
          codAtiv: atividade.codAtiv,
          descrAtiv: atividade.descrAtiv,
        );
        atividadeModelList.add(model);
      }
      await datasourceDataBase.addAllGeneric(atividadeModelList);
      return const Right(true);
    } catch (e) {
      return Left(ErroReturnRepository());
    }
  }
}
