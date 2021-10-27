import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/oper_motomec.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/oper_motomec_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/oper_motomec_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/oper_motomec_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'oper_motomec_repository.g.dart';

@Injectable(singleton: false)
class OperMotoMecRepositoryImpl extends GenericRepository<OperMotoMec> {
  final OperMotoMecDatasourceWeb datasourceWeb;
  final OperMotoMecDao datasourceDataBase;

  OperMotoMecRepositoryImpl(
    this.datasourceWeb,
    this.datasourceDataBase,
  );

  @override
  Future<Either<Failure, List<OperMotoMec>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) => right(List<OperMotoMecModel>.from(
            r.map((e) => OperMotoMecModel.fromMap(e)))),
      );
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<OperMotoMec> list) async {
    try {
      var modelList = [];
      for (OperMotoMec entity in list) {
        OperMotoMecModel model = OperMotoMecModel(
          idOperMotoMec: entity.idOperMotoMec,
          codOperMotoMec: entity.codOperMotoMec,
          descrOperMotoMec: entity.descrOperMotoMec,
          codFuncaoOperMotoMec: entity.codFuncaoOperMotoMec,
          posOperMotoMec: entity.posOperMotoMec,
          tipoOperMotoMec: entity.tipoOperMotoMec,
          aplicOperMotoMec: entity.aplicOperMotoMec,
          funcaoOperMotoMec: entity.funcaoOperMotoMec,
        );
        modelList.add(model);
      }
      return await datasourceDataBase.addAllGeneric(modelList);
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }
}
