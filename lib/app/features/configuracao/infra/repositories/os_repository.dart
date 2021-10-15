import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/os.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/os_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/os_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

class OSRepositoryImpl extends GenericRepository<OS> {
  final OSDatasourceWeb datasource;
  OSRepositoryImpl(this.datasource);

  @override
  Future<Either<ErrorException, List<OS>>> getAllGeneric() async {
    try {
      List<OSModel> dados = await datasource.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(List<OS> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
