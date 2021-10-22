import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/leira_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/leira_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'leira_dao.g.dart';

@Injectable(singleton: false)
@UseDao(tables: [LeiraTable])
class LeiraDao extends DatabaseAccessor<DataBase>
    with _$LeiraDaoMixin, GenericDatasource<LeiraModel> {
  LeiraDao(DataBase attachedDatabase) : super(attachedDatabase);

  @override
  Future<int> add(LeiraModel entity) {
    return into(leiraTable).insert(entity.leiraTableData());
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<LeiraModel> list) async {
    late int res;
    for (LeiraModel model in list) {
      res = await add(model);
    }
    if (list.length == res) {
      return right(true);
    } else {
      return left(ErroInsertBDInternal());
    }
  }

  @override
  Future<Either<Failure, List<LeiraModel>>> getAllGeneric() {
    throw UnimplementedError();
  }
}
