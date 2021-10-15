import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/bocal.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/bocal_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/bocal_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

class BocalRepositoryImpl extends GenericRepository<Bocal> {
  final BocalDatasourceWeb datasourceWeb;
  BocalRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<ErrorException, List<Bocal>>> getAllGeneric() async {
    try {
      List<BocalModel> dados = await datasourceWeb.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<Bocal> atividadeList) {
    throw UnimplementedError();
  }
}
