import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/equip_seg.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/equip_seg_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/equip_seg_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/equip_seg_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'equip_seg_repository.g.dart';

@Injectable(singleton: false)
class EquipSegRepositoryImpl extends GenericRepository<EquipSeg> {
  final EquipSegDatasourceWeb datasourceWeb;
  final EquipSegDao datasourceDataBase;

  EquipSegRepositoryImpl(
    this.datasourceWeb,
    this.datasourceDataBase,
  );

  @override
  Future<Either<Failure, List<EquipSeg>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) => right(
            List<EquipSegModel>.from(r.map((e) => EquipSegModel.fromMap(e)))),
      );
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<EquipSeg> list) async {
    try {
      var modelList = [];
      for (EquipSeg entity in list) {
        EquipSegModel model = EquipSegModel(
          idEquip: entity.idEquip,
          nroEquip: entity.nroEquip,
          codClasseEquip: entity.codClasseEquip,
          descrClasseEquip: entity.descrClasseEquip,
          tipoEquip: entity.tipoEquip,
        );
        modelList.add(model);
      }
      return await datasourceDataBase.addAllGeneric(modelList);
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }
}
