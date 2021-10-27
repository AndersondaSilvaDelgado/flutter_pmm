import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/r_equip_ativ.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/r_equip_ativ_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/r_equip_ativ_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/r_equip_ativ_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'r_equip_ativ_repository.g.dart';

@Injectable(singleton: false)
class REquipAtivRepositoryImpl extends GenericRepository<REquipAtiv> {
  final REquipAtivDatasourceWeb datasourceWeb;
  final REquipAtivDao datasourceDataBase;

  REquipAtivRepositoryImpl(
    this.datasourceWeb,
    this.datasourceDataBase,
  );

  @override
  Future<Either<Failure, List<REquipAtiv>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) => right(List<REquipAtivModel>.from(
            r.map((e) => REquipAtivModel.fromMap(e)))),
      );
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<REquipAtiv> list) async {
    try {
      var modelList = [];
      for (REquipAtiv entity in list) {
        REquipAtivModel model = REquipAtivModel(
          idREquipAtiv: entity.idREquipAtiv,
          idEquip: entity.idEquip,
          idAtiv: entity.idAtiv,
        );
        modelList.add(model);
      }
      return await datasourceDataBase.addAllGeneric(modelList);
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }
}
