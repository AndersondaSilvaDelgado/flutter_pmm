import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/frente.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/frente_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/frente_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/frente_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'frente_repository.g.dart';

@Injectable(singleton: false)
class FrenteRepositoryImpl extends GenericRepository<Frente> {
  final FrenteDatasourceWeb datasourceWeb;
  final FrenteDao datasourceDataBase;

  FrenteRepositoryImpl(
    this.datasourceWeb,
    this.datasourceDataBase,
  );

  @override
  Future<Either<Failure, List<Frente>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) =>
            right(List<FrenteModel>.from(r.map((e) => FrenteModel.fromMap(e)))),
      );
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<Frente> list) async {
    try {
      var modelList = [];
      for (Frente entity in list) {
        FrenteModel model = FrenteModel(
          idFrente: entity.idFrente,
          codFrente: entity.codFrente,
          descrFrente: entity.descrFrente,
        );
        modelList.add(model);
      }
      return await datasourceDataBase.addAllGeneric(modelList);
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }
}
