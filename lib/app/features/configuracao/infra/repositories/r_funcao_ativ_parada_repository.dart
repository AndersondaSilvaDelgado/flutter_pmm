import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/r_funcao_ativ_parada.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/r_funcao_ativ_parada_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/r_funcao_ativ_parada_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/r_funcao_ativ_parada_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'r_funcao_ativ_parada_repository.g.dart';

@Injectable(singleton: false)
class RFuncaoAtivParadaRepositoryImpl
    extends GenericRepository<RFuncaoAtivParada> {
  final RFuncaoAtivParadaDatasourceWeb datasourceWeb;
  final RFuncaoAtivParadaDao datasourceDataBase;

  RFuncaoAtivParadaRepositoryImpl(
    this.datasourceWeb,
    this.datasourceDataBase,
  );

  @override
  Future<Either<Failure, List<RFuncaoAtivParada>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) => right(List<RFuncaoAtivParadaModel>.from(
            r.map((e) => RFuncaoAtivParadaModel.fromMap(e)))),
      );
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(
      List<RFuncaoAtivParada> list) async {
    try {
      var modelList = [];
      for (RFuncaoAtivParada entity in list) {
        RFuncaoAtivParadaModel model = RFuncaoAtivParadaModel(
          idRFuncaoAtivParada: entity.idRFuncaoAtivParada,
          idAtivParada: entity.idAtivParada,
          codFuncao: entity.codFuncao,
          tipoFuncao: entity.tipoFuncao,
        );
        modelList.add(model);
      }
      return await datasourceDataBase.addAllGeneric(modelList);
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }
}
