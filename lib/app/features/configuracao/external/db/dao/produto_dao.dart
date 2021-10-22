import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/produto_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/produto_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'produto_dao.g.dart';

@Injectable(singleton: false)
@UseDao(tables: [ProdutoTable])
class ProdutoDao extends DatabaseAccessor<DataBase>
    with _$ProdutoDaoMixin, GenericDatasource<ProdutoModel> {
  ProdutoDao(DataBase db) : super(db);

  @override
  Future<int> add(ProdutoModel entity) {
    return into(produtoTable).insert(entity.produtoTableData());
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<ProdutoModel> list) async {
    late int res;
    for (ProdutoModel model in list) {
      res = await add(model);
    }
    if (list.length == res) {
      return right(true);
    } else {
      return left(ErroInsertBDInternal());
    }
  }

  @override
  Future<Either<Failure, List<ProdutoModel>>> getAllGeneric() {
    throw UnimplementedError();
  }
}
