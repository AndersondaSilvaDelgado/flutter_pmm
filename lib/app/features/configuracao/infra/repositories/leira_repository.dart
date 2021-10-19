import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/leira.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/leira_datasource.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'leira_repository.g.dart';

@Injectable(singleton: false)
class LeiraRepositoryImpl extends GenericRepository<Leira> {
  final LeiraDatasourceWeb datasourceWeb;
  LeiraRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<Failure, List<Leira>>> getAllGeneric() async {
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
  Future<Either<Failure, bool>> addAllGeneric(List<Leira> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
