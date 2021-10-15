import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/leira.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/leira_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/leira_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

class LeiraRepositoryImpl extends GenericRepository<Leira> {
  final LeiraDatasourceWeb datasource;
  LeiraRepositoryImpl(this.datasource);

  @override
  Future<Either<ErrorException, List<Leira>>> getAllGeneric() async {
    try {
      List<LeiraModel> dados = await datasource.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<Leira> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
