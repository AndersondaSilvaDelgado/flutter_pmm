import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/propriedade_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/propriedade_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'propriedade_dao.g.dart';

@Injectable(singleton: false)
@UseDao(tables: [PropriedadeTable])
class PropriedadeDao extends DatabaseAccessor<DataBase>
    with _$PropriedadeDaoMixin, GenericDatasource<PropriedadeModel> {
  PropriedadeDao(DataBase db) : super(db);

  @override
  Future<int> add(PropriedadeModel entity) {
    return into(propriedadeTable).insert(entity.propriedadeTableData());
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(
      List<PropriedadeModel> list) async {
    late int res;
    for (PropriedadeModel model in list) {
      res = await add(model);
    }
    if (list.length == res) {
      return right(true);
    } else {
      return left(ErroInsertBDInternal());
    }
  }

  @override
  Future<Either<Failure, List<PropriedadeModel>>> getAllGeneric() {
    throw UnimplementedError();
  }
}
