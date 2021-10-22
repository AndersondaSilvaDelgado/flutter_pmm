import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/equip_seg.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/equip_seg_datasource.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'equip_seg_repository.g.dart';

@Injectable(singleton: false)
class EquipSegRepositoryImpl extends GenericRepository<EquipSeg> {
  final EquipSegDatasourceWeb datasourceWeb;
  EquipSegRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<Failure, List<EquipSeg>>> getAllGeneric() async {
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
  Future<Either<Failure, bool>> addAllGeneric(List<EquipSeg> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
