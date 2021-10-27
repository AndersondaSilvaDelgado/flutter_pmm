import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/parada.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/parada_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/parada_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/parada_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'parada_repository.g.dart';

@Injectable(singleton: false)
class ParadaRepositoryImpl extends GenericRepository<Parada> {
  final ParadaDatasourceWeb datasourceWeb;
  final ParadaDao datasourceDataBase;

  ParadaRepositoryImpl(
    this.datasourceWeb,
    this.datasourceDataBase,
  );

  @override
  Future<Either<Failure, List<Parada>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) =>
            right(List<ParadaModel>.from(r.map((e) => ParadaModel.fromMap(e)))),
      );
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<Parada> list) async {
    try {
      var modelList = [];
      for (Parada entity in list) {
        ParadaModel model = ParadaModel(
          idParada: entity.idParada,
          codParada: entity.codParada,
          descrParada: entity.descrParada,
        );
        modelList.add(model);
      }
      return await datasourceDataBase.addAllGeneric(modelList);
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }
}
