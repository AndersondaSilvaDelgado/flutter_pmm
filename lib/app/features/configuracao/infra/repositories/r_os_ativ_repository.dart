import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/r_os_ativ.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/r_os_ativ_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/r_os_ativ_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

class ROSAtivRepositoryImpl extends GenericRepository<ROSAtiv> {
  final ROSAtivDatasourceWeb datasource;
  ROSAtivRepositoryImpl(this.datasource);

  @override
  Future<Either<ErrorException, List<ROSAtiv>>> getAllGeneric() async {
    try {
      List<ROSAtivModel> dados = await datasource.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<ROSAtiv> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
