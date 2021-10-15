import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/propriedade.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/propriedade_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/propriedade_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

class PropriedadeRepositoryImpl extends GenericRepository<Propriedade> {
  final PropriedadeDatasourceWeb datasource;
  PropriedadeRepositoryImpl(this.datasource);

  @override
  Future<Either<ErrorException, List<Propriedade>>> getAllGeneric() async {
    try {
      List<PropriedadeModel> dados = await datasource.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<Propriedade> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
