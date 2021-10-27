import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/item_checklist.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/item_checklist_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/item_checklist_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/item_checklist_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'item_checklist_repository.g.dart';

@Injectable(singleton: false)
class ItemCheckListRepositoryImpl extends GenericRepository<ItemCheckList> {
  final ItemCheckListDatasourceWeb datasourceWeb;
  final ItemCheckListDao datasourceDataBase;

  ItemCheckListRepositoryImpl(
    this.datasourceWeb,
    this.datasourceDataBase,
  );

  @override
  Future<Either<Failure, List<ItemCheckList>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) => right(List<ItemCheckListModel>.from(
            r.map((e) => ItemCheckListModel.fromMap(e)))),
      );
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<ItemCheckList> list) async {
    try {
      var modelList = [];
      for (ItemCheckList entity in list) {
        ItemCheckListModel model = ItemCheckListModel(
          idItemCheckList: entity.idItemCheckList,
          idCheckList: entity.idCheckList,
          descrItemCheckList: entity.descrItemCheckList,
        );
        modelList.add(model);
      }
      return await datasourceDataBase.addAllGeneric(modelList);
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }
}
