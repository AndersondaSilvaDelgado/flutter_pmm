import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/r_funcao_ativ_parada.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/r_funcao_ativ_parada_datasource.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'r_funcao_ativ_parada_repository.g.dart';

@Injectable(singleton: false)
class RFuncaoAtivParadaRepositoryImpl
    extends GenericRepository<RFuncaoAtivParada> {
  final RFuncaoAtivParadaDatasourceWeb datasourceWeb;
  RFuncaoAtivParadaRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<Failure, List<RFuncaoAtivParada>>> getAllGeneric() async {
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
      List<RFuncaoAtivParada> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
