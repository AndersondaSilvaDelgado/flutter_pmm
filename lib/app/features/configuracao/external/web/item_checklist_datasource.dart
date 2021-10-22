import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/item_checklist_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

part 'item_checklist_datasource.g.dart';

@Injectable(singleton: false)
class ItemCheckListDatasourceWeb extends GenericDatasource<ItemCheckListModel> {
  final GetDio getDio;
  ItemCheckListDatasourceWeb(this.getDio);

  @override
  Future<Either<Failure, List<ItemCheckListModel>>> getAllGeneric() async {
    var data = await getDio(
        "http://www.usinasantafe.com.br/fpmmdev/itemchecklist.php");
    return data.fold(
        (l) => left(l),
        (r) => r.isEmpty
            ? left(EmptyList())
            : right(List<ItemCheckListModel>.from(
                r.map((e) => ItemCheckListModel.fromMap(e)))));
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<ItemCheckListModel> list) {
    throw UnimplementedError();
  }

  @override
  Future<int> add(ItemCheckListModel entity) {
    // TODO: implement add
    throw UnimplementedError();
  }
}
