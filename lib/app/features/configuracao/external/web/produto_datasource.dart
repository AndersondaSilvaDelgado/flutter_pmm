import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/produto_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

part 'produto_datasource.g.dart';

@Injectable(singleton: false)
class ProdutoDatasourceWeb extends GenericDatasource<ProdutoModel> {
  final GetDio getDio;
  ProdutoDatasourceWeb(this.getDio);

  @override
  Future<Either<Failure, List<ProdutoModel>>> getAllGeneric() async {
    try {
      var data =
          await getDio("http://www.usinasantafe.com.br/fpmmdev/produto.php");
      return data.fold(
          (l) => left(l),
          (r) => r.isEmpty
              ? left(EmptyList())
              : right(List<ProdutoModel>.from(
                  r.map((e) => ProdutoModel.fromMap(e)))));
    } catch (e) {
      return Left(ErrorDesconhecido());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<ProdutoModel> list) {
    throw UnimplementedError();
  }

  @override
  Future<int> add(ProdutoModel entity) {
    // TODO: implement add
    throw UnimplementedError();
  }
}
