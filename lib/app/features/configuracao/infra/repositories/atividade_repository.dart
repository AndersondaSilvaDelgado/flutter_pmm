import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/atividade.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/atividade_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/atividade_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'atividade_repository.g.dart';

@Injectable(singleton: false)
class AtividadeRepositoryImpl extends GenericRepository<Atividade> {
  final AtividadeDatasourceWeb datasourceWeb;
  // final AtividadeDao datasourceDataBase;
  AtividadeRepositoryImpl(
    this.datasourceWeb,
    // this.datasourceDataBase,
  );

  @override
  Future<Either<ErrorException, List<Atividade>>> getAllGeneric() async {
    try {
      List<AtividadeModel> dados = await datasourceWeb.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<Atividade> atividadeList) async {
    try {
      for (Atividade atividade in atividadeList) {
        AtividadeModel model = AtividadeModel(
          idAtiv: atividade.idAtiv,
          codAtiv: atividade.codAtiv,
          descrAtiv: atividade.descrAtiv,
        );
        // await datasourceDataBase.addAtividade(model);
      }
      return const Right(true);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }
}
