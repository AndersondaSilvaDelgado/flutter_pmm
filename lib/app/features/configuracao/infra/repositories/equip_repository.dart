import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/equip.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/equip_datasource.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'equip_repository.g.dart';

@Injectable(singleton: false)
class EquipRepositoryImpl extends GenericRepository<Equip> {
  final EquipDatasourceWeb datasourceWeb;
  EquipRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<Failure, List<Equip>>> getAllGeneric() async {
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
  Future<Either<Failure, bool>> addAllGeneric(List<Equip> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
