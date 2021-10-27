import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/r_ativ_parada.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/r_ativ_parada_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/r_ativ_parada_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/r_ativ_parada_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'r_ativ_parada_repository.g.dart';

@Injectable(singleton: false)
class RAtivParadaRepositoryImpl extends GenericRepository<RAtivParada> {
  final RAtivParadaDatasourceWeb datasourceWeb;
  final RAtivParadaDao datasourceDataBase;

  RAtivParadaRepositoryImpl(
    this.datasourceWeb,
    this.datasourceDataBase,
  );

  @override
  Future<Either<Failure, List<RAtivParada>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) => right(List<RAtivParadaModel>.from(
            r.map((e) => RAtivParadaModel.fromMap(e)))),
      );
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<RAtivParada> list) async {
    try {
      var modelList = [];
      for (RAtivParada entity in list) {
        RAtivParadaModel model = RAtivParadaModel(
          idRAtivParada: entity.idRAtivParada,
          idAtiv: entity.idAtiv,
          idParada: entity.idParada,
        );
        modelList.add(model);
      }
      return await datasourceDataBase.addAllGeneric(modelList);
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }
}
