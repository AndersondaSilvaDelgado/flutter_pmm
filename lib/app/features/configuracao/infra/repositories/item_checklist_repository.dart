import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/item_checklist.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/item_checklist_datasource.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'item_checklist_repository.g.dart';

@Injectable(singleton: false)
class ItemCheckListRepositoryImpl extends GenericRepository<ItemCheckList> {
  final ItemCheckListDatasourceWeb datasourceWeb;
  ItemCheckListRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<Failure, List<ItemCheckList>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) => right(r),
      );
    } catch (e) {
      return Left(ErroReturnRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(
      List<ItemCheckList> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
