import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/func.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/func_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/func_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

class FuncRepositoryImpl extends GenericRepository<Func> {
  final FuncDatasourceWeb datasourceWeb;
  FuncRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<ErrorException, List<Func>>> getAllGeneric() async {
    try {
      List<FuncModel> dados = await datasourceWeb.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(List<Func> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
