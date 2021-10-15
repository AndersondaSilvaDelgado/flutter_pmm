import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/r_funcao_ativ_parada.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/r_funcao_ativ_parada_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/r_funcao_ativ_parada_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

class RFuncaoAtivParadaRepositoryImpl
    extends GenericRepository<RFuncaoAtivParada> {
  final RFuncaoAtivParadaDatasourceWeb datasource;
  RFuncaoAtivParadaRepositoryImpl(this.datasource);

  @override
  Future<Either<ErrorException, List<RFuncaoAtivParada>>>
      getAllGeneric() async {
    try {
      List<RFuncaoAtivParadaModel> dados = await datasource.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<RFuncaoAtivParada> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
