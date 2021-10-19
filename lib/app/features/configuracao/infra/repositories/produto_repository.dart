import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/produto.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/produto_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/produto_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'produto_repository.g.dart';

@Injectable(singleton: false)
class ProdutoRepositoryImpl extends GenericRepository<Produto> {
  final ProdutoDatasourceWeb datasourceWeb;
  ProdutoRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<Failure, List<Produto>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) => right(r),
      );
    } catch (e) {
      return Left(ErroReturnRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<Produto> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
