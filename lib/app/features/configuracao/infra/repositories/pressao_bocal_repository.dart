import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/pressao_bocal.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/pressao_bocal_datasource.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'pressao_bocal_repository.g.dart';

@Injectable(singleton: false)
class PressaoBocalRepositoryImpl extends GenericRepository<PressaoBocal> {
  final PressaoBocalDatasourceWeb datasourceWeb;
  PressaoBocalRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<Failure, List<PressaoBocal>>> getAllGeneric() async {
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
      List<PressaoBocal> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
