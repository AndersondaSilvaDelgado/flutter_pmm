import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/os.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/os_datasource.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'os_repository.g.dart';

@Injectable(singleton: false)
class OSRepositoryImpl extends GenericRepository<OS> {
  final OSDatasourceWeb datasourceWeb;
  OSRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<Failure, List<OS>>> getAllGeneric() async {
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
  Future<Either<Failure, bool>> addAllGeneric(List<OS> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
