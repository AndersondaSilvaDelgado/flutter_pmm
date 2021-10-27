import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/bocal.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/bocal_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/bocal_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/bocal_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'bocal_repository.g.dart';

@Injectable(singleton: false)
class BocalRepositoryImpl extends GenericRepository<Bocal> {
  final BocalDatasourceWeb datasourceWeb;
  final BocalDao datasourceDataBase;

  BocalRepositoryImpl(
    this.datasourceWeb,
    this.datasourceDataBase,
  );

  @override
  Future<Either<Failure, List<Bocal>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) =>
            right(List<BocalModel>.from(r.map((e) => BocalModel.fromMap(e)))),
      );
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<Bocal> list) async {
    try {
      var modelList = [];
      for (Bocal entity in list) {
        BocalModel model = BocalModel(
          idBocal: entity.idBocal,
          codBocal: entity.codBocal,
          descrBocal: entity.descrBocal,
        );
        modelList.add(model);
      }
      return await datasourceDataBase.addAllGeneric(modelList);
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }
}
