import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/bocal.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/bocal_datasource.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'bocal_repository.g.dart';

@Injectable(singleton: false)
class BocalRepositoryImpl extends GenericRepository<Bocal> {
  final BocalDatasourceWeb datasourceWeb;
  BocalRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<Failure, List<Bocal>>> getAllGeneric() async {
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
  Future<Either<Failure, bool>> addAllGeneric(List<Bocal> atividadeList) {
    throw UnimplementedError();
  }
}
