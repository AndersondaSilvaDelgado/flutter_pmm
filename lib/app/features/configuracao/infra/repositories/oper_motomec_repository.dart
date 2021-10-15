import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/oper_motomec.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/oper_motomec_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/oper_motomec_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

class OperMotoMecRepositoryImpl extends GenericRepository<OperMotoMec> {
  final OperMotoMecDatasourceWeb datasource;
  OperMotoMecRepositoryImpl(this.datasource);

  @override
  Future<Either<ErrorException, List<OperMotoMec>>> getAllGeneric() async {
    try {
      List<OperMotoMecModel> dados = await datasource.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<OperMotoMec> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
