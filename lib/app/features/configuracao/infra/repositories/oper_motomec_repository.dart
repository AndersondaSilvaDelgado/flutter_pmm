import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/oper_motomec.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/oper_motomec_datasource.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'oper_motomec_repository.g.dart';

@Injectable(singleton: false)
class OperMotoMecRepositoryImpl extends GenericRepository<OperMotoMec> {
  final OperMotoMecDatasourceWeb datasourceWeb;
  OperMotoMecRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<Failure, List<OperMotoMec>>> getAllGeneric() async {
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
  Future<Either<Failure, bool>> addAllGeneric(List<OperMotoMec> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
