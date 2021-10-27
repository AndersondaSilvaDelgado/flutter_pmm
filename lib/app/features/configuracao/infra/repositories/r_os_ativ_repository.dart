import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/r_os_ativ.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/r_os_ativ_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/r_os_ativ_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/r_os_ativ_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'r_os_ativ_repository.g.dart';

@Injectable(singleton: false)
class ROSAtivRepositoryImpl extends GenericRepository<ROSAtiv> {
  final ROSAtivDatasourceWeb datasourceWeb;
  final ROSAtivDao datasourceDataBase;

  ROSAtivRepositoryImpl(
    this.datasourceWeb,
    this.datasourceDataBase,
  );

  @override
  Future<Either<Failure, List<ROSAtiv>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) => right(
            List<ROSAtivModel>.from(r.map((e) => ROSAtivModel.fromMap(e)))),
      );
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<ROSAtiv> list) async {
    try {
      var modelList = [];
      for (ROSAtiv entity in list) {
        ROSAtivModel model = ROSAtivModel(
          idROSAtiv: entity.idROSAtiv,
          nroOS: entity.nroOS,
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
