import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/r_ativ_parada.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/r_ativ_parada_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/r_ativ_parada_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

class RAtivParadaRepositoryImpl extends GenericRepository<RAtivParada> {
  final RAtivParadaDatasourceWeb datasource;
  RAtivParadaRepositoryImpl(this.datasource);

  @override
  Future<Either<ErrorException, List<RAtivParada>>> getAllGeneric() async {
    try {
      List<RAtivParadaModel> dados = await datasource.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<RAtivParada> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
