import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/produto_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class ProdutoDatasourceWeb extends GenericDatasource<ProdutoModel> {
  final GetDio getDio;
  ProdutoDatasourceWeb(this.getDio);

  @override
  Future<List<ProdutoModel>> getAllGeneric() async {
    var data =
        await getDio("http://www.usinasantafe.com.br/fpmmdev/produto.php");
    List<ProdutoModel> dados = List<ProdutoModel>.from(
        data.map((data) => ProdutoModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(List<ProdutoModel> list) {
    throw UnimplementedError();
  }
}
