import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/parada.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/parada_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/parada_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

class ParadaRepositoryImpl extends GenericRepository<Parada> {
  final ParadaDatasourceWeb datasource;
  ParadaRepositoryImpl(this.datasource);

  @override
  Future<Either<ErrorException, List<Parada>>> getAllGeneric() async {
    try {
      List<ParadaModel> dados = await datasource.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<Parada> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
