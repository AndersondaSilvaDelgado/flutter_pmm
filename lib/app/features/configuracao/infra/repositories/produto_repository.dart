import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/produto.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/produto_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/produto_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

class ProdutoRepositoryImpl extends GenericRepository<Produto> {
  final ProdutoDatasourceWeb datasource;
  ProdutoRepositoryImpl(this.datasource);

  @override
  Future<Either<ErrorException, List<Produto>>> getAllGeneric() async {
    try {
      List<ProdutoModel> dados = await datasource.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<Produto> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
