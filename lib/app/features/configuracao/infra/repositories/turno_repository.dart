import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/turno.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/turno_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/turno_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/turno_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'turno_repository.g.dart';

@Injectable(singleton: false)
class TurnoRepositoryImpl extends GenericRepository<Turno> {
  final TurnoDatasourceWeb datasourceWeb;
  final TurnoDao datasourceDataBase;

  TurnoRepositoryImpl(this.datasourceWeb, this.datasourceDataBase);

  @override
  Future<Either<Failure, List<Turno>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) => right(r),
      );
    } catch (e) {
      return Left(ErroReturnRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<Turno> list) async {
    try {
      var modelList = [];
      for (Turno entity in list) {
        TurnoModel model = TurnoModel(
          idTurno: entity.idTurno,
          codTurno: entity.codTurno,
          nroTurno: entity.nroTurno,
          descTurno: entity.descTurno,
        );
        modelList.add(model);
      }
      return await datasourceDataBase.addAllGeneric(modelList);
    } catch (e) {
      return Left(ErroReturnRepository());
    }
  }
}
