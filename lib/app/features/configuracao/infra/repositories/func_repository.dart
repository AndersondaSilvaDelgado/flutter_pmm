import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/func.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/func_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/func_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/func_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'func_repository.g.dart';

@Injectable(singleton: false)
class FuncRepositoryImpl extends GenericRepository<Func> {
  final FuncDatasourceWeb datasourceWeb;
  final FuncDao datasourceDataBase;

  FuncRepositoryImpl(
    this.datasourceWeb,
    this.datasourceDataBase,
  );

  @override
  Future<Either<Failure, List<Func>>> getAllGeneric() async {
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
  Future<Either<Failure, bool>> addAllGeneric(List<Func> list) async {
    try {
      var modelList = [];
      for (Func entity in list) {
        FuncModel model = FuncModel(
          matricFunc: entity.matricFunc,
          nomeFunc: entity.nomeFunc,
        );
        modelList.add(model);
      }
      return await datasourceDataBase.addAllGeneric(modelList);
    } catch (e) {
      return Left(ErroReturnRepository());
    }
  }
}
