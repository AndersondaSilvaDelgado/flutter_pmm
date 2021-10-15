import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/item_checklist.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/item_checklist_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/item_checklist_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

class ItemCheckListRepositoryImpl extends GenericRepository<ItemCheckList> {
  final ItemCheckListDatasourceWeb datasource;
  ItemCheckListRepositoryImpl(this.datasource);

  @override
  Future<Either<ErrorException, List<ItemCheckList>>> getAllGeneric() async {
    try {
      List<ItemCheckListModel> dados = await datasource.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<ItemCheckList> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
