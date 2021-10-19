import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/propriedade.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/propriedade_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/propriedade_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'propriedade_repository.g.dart';

@Injectable(singleton: false)
class PropriedadeRepositoryImpl extends GenericRepository<Propriedade> {
  final PropriedadeDatasourceWeb datasourceWeb;
  PropriedadeRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<Failure, List<Propriedade>>> getAllGeneric() async {
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
  Future<Either<Failure, bool>> addAllGeneric(List<Propriedade> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
