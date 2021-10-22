import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/frente.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/frente_datasource.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'frente_repository.g.dart';

@Injectable(singleton: false)
class FrenteRepositoryImpl extends GenericRepository<Frente> {
  final FrenteDatasourceWeb datasourceWeb;
  FrenteRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<Failure, List<Frente>>> getAllGeneric() async {
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
  Future<Either<Failure, bool>> addAllGeneric(List<Frente> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
