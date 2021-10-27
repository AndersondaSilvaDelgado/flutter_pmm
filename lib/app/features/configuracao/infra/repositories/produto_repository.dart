import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/produto.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/produto_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/produto_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/produto_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'produto_repository.g.dart';

@Injectable(singleton: false)
class ProdutoRepositoryImpl extends GenericRepository<Produto> {
  final ProdutoDatasourceWeb datasourceWeb;
  final ProdutoDao datasourceDataBase;

  ProdutoRepositoryImpl(
    this.datasourceWeb,
    this.datasourceDataBase,
  );

  @override
  Future<Either<Failure, List<Produto>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) => right(
            List<ProdutoModel>.from(r.map((e) => ProdutoModel.fromMap(e)))),
      );
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<Produto> list) async {
    try {
      var modelList = [];
      for (Produto entity in list) {
        ProdutoModel model = ProdutoModel(
          idProduto: entity.idProduto,
          codProduto: entity.codProduto,
          descProduto: entity.descProduto,
        );
        modelList.add(model);
      }
      return await datasourceDataBase.addAllGeneric(modelList);
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }
}
