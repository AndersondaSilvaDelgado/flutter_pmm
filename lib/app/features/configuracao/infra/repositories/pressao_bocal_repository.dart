import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/pressao_bocal.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/pressao_bocal_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/pressao_bocal_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

class PressaoBocalRepositoryImpl extends GenericRepository<PressaoBocal> {
  final PressaoBocalDatasourceWeb datasource;
  PressaoBocalRepositoryImpl(this.datasource);

  @override
  Future<Either<ErrorException, List<PressaoBocal>>> getAllGeneric() async {
    try {
      List<PressaoBocalModel> dados = await datasource.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<PressaoBocal> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
