import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/r_os_ativ.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/r_os_ativ_datasource.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'r_os_ativ_repository.g.dart';

@Injectable(singleton: false)
class ROSAtivRepositoryImpl extends GenericRepository<ROSAtiv> {
  final ROSAtivDatasourceWeb datasourceWeb;
  ROSAtivRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<Failure, List<ROSAtiv>>> getAllGeneric() async {
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
  Future<Either<Failure, bool>> addAllGeneric(List<ROSAtiv> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
