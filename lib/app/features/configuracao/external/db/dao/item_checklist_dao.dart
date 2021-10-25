import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/item_checklist_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/item_checklist_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'item_checklist_dao.g.dart';

@Injectable(singleton: false)
@UseDao(tables: [ItemCheckListTable])
class ItemCheckListDao extends DatabaseAccessor<DataBase>
    with _$ItemCheckListDaoMixin, GenericDatasource<ItemCheckListModel> {
  ItemCheckListDao(DataBase db) : super(db);

  @override
  Future<int> add(ItemCheckListModel entity) {
    return into(itemCheckListTable).insert(entity.itemCheckListTableData());
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List list) async {
    late int res;
    for (ItemCheckListModel model in list) {
      res = await add(model);
    }
    if (list.length == res) {
      return right(true);
    } else {
      return left(ErroInsertBDInternal());
    }
  }

  @override
  Future<Either<Failure, List<ItemCheckListModel>>> getAllGeneric() {
    throw UnimplementedError();
  }
}
