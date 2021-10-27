import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/equip.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/equip_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/equip_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/equip_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'equip_repository.g.dart';

@Injectable(singleton: false)
class EquipRepositoryImpl extends GenericRepository<Equip> {
  final EquipDatasourceWeb datasourceWeb;
  final EquipDao datasourceDataBase;

  EquipRepositoryImpl(
    this.datasourceWeb,
    this.datasourceDataBase,
  );

  @override
  Future<Either<Failure, List<Equip>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) =>
            right(List<EquipModel>.from(r.map((e) => EquipModel.fromMap(e)))),
      );
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<Equip> list) async {
    try {
      var modelList = [];
      for (Equip entity in list) {
        EquipModel model = EquipModel(
          idEquip: entity.idEquip,
          nroEquip: entity.nroEquip,
          codClasseEquip: entity.codClasseEquip,
          descrClasseEquip: entity.descrClasseEquip,
          codTurno: entity.codTurno,
          idCheckList: entity.idCheckList,
          tipoEquipFert: entity.tipoEquipFert,
          horimetroEquip: entity.horimetroEquip,
          medicaoEquipFert: entity.medicaoEquipFert,
          tipoEquip: entity.tipoEquip,
          classifEquip: entity.classifEquip,
        );
        modelList.add(model);
      }
      return await datasourceDataBase.addAllGeneric(modelList);
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }
}
