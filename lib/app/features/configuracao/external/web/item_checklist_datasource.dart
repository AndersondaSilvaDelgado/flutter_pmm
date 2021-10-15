import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/item_checklist_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class ItemCheckListDatasourceWeb extends GenericDatasource<ItemCheckListModel> {
  final GetDio getDio;
  ItemCheckListDatasourceWeb(this.getDio);

  @override
  Future<List<ItemCheckListModel>> getAllGeneric() async {
    var data = await getDio(
        "http://www.usinasantafe.com.br/fpmmdev/itemchecklist.php");
    List<ItemCheckListModel> dados = List<ItemCheckListModel>.from(
        data.map((data) => ItemCheckListModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<ItemCheckListModel> list) {
    throw UnimplementedError();
  }
}
