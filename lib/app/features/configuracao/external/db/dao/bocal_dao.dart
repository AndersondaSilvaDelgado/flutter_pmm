import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/bocal_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/bocal_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'bocal_dao.g.dart';

@Injectable(singleton: false)
@UseDao(tables: [BocalTable])
class BocalDao extends DatabaseAccessor<DataBase>
    with _$BocalDaoMixin, GenericDatasource<BocalModel> {
  BocalDao(DataBase db) : super(db);

  @override
  Future<int> add(BocalModel entity) {
    return into(bocalTable).insert(entity.bocalTableData());
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List list) async {
    late int res;
    for (BocalModel model in list) {
      res = await add(model);
    }
    if (list.length == res) {
      return right(true);
    } else {
      return left(ErrorInsertBDInternal());
    }
  }

  @override
  Future<Either<Failure, List<BocalModel>>> getAllGeneric() {
    throw UnimplementedError();
  }
}
