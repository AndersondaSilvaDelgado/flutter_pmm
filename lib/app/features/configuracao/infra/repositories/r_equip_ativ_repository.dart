import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/r_equip_ativ.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/r_equip_ativ_datasource.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'r_equip_ativ_repository.g.dart';

@Injectable(singleton: false)
class REquipAtivRepositoryImpl extends GenericRepository<REquipAtiv> {
  final REquipAtivDatasourceWeb datasourceWeb;
  REquipAtivRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<Failure, List<REquipAtiv>>> getAllGeneric() async {
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
  Future<Either<Failure, bool>> addAllGeneric(List<REquipAtiv> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
