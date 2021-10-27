import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/pressao_bocal.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/pressao_bocal_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/pressao_bocal_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/pressao_bocal_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'pressao_bocal_repository.g.dart';

@Injectable(singleton: false)
class PressaoBocalRepositoryImpl extends GenericRepository<PressaoBocal> {
  final PressaoBocalDatasourceWeb datasourceWeb;
  final PressaoBocalDao datasourceDataBase;

  PressaoBocalRepositoryImpl(
    this.datasourceWeb,
    this.datasourceDataBase,
  );

  @override
  Future<Either<Failure, List<PressaoBocal>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) => right(List<PressaoBocalModel>.from(
            r.map((e) => PressaoBocalModel.fromMap(e)))),
      );
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<PressaoBocal> list) async {
    try {
      var modelList = [];
      for (PressaoBocal entity in list) {
        PressaoBocalModel model = PressaoBocalModel(
          idPressaoBocal: entity.idPressaoBocal,
          idBocal: entity.idBocal,
          valorPressao: entity.valorPressao,
          valorVeloc: entity.valorVeloc,
        );
        modelList.add(model);
      }
      return await datasourceDataBase.addAllGeneric(modelList);
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }
}
