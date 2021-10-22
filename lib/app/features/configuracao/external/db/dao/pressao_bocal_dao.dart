import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/pressao_bocal_table.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/pressao_bocal_model.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'pressao_bocal_dao.g.dart';

@Injectable(singleton: false)
@UseDao(tables: [PressaoBocalTable])
class PressaoBocalDao extends DatabaseAccessor<DataBase>
    with _$PressaoBocalDaoMixin, GenericDatasource<PressaoBocalModel> {
  PressaoBocalDao(DataBase db) : super(db);

  @override
  Future<int> add(PressaoBocalModel entity) {
    return into(pressaoBocalTable).insert(entity.pressaoBocalTableData());
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(
      List<PressaoBocalModel> list) async {
    late int res;
    for (PressaoBocalModel model in list) {
      res = await add(model);
    }
    if (list.length == res) {
      return right(true);
    } else {
      return left(ErroInsertBDInternal());
    }
  }

  @override
  Future<Either<Failure, List<PressaoBocalModel>>> getAllGeneric() {
    throw UnimplementedError();
  }
}
