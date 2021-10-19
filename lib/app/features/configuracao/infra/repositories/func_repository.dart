import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/func.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/func_datasource.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'func_repository.g.dart';

@Injectable(singleton: false)
class FuncRepositoryImpl extends GenericRepository<Func> {
  final FuncDatasourceWeb datasourceWeb;
  FuncRepositoryImpl(this.datasourceWeb);

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
  Future<Either<Failure, bool>> addAllGeneric(List<Func> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
