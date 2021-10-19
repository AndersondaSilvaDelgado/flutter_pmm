import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/parada.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/parada_datasource.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'parada_repository.g.dart';

@Injectable(singleton: false)
class ParadaRepositoryImpl extends GenericRepository<Parada> {
  final ParadaDatasourceWeb datasourceWeb;
  ParadaRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<Failure, List<Parada>>> getAllGeneric() async {
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
  Future<Either<Failure, bool>> addAllGeneric(List<Parada> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
