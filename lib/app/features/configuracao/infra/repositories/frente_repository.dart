import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/frente.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/frente_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/frente_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

class FrenteRepositoryImpl extends GenericRepository<Frente> {
  final FrenteDatasourceWeb datasourceWeb;
  FrenteRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<ErrorException, List<Frente>>> getAllGeneric() async {
    try {
      List<FrenteModel> dados = await datasourceWeb.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<Frente> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
