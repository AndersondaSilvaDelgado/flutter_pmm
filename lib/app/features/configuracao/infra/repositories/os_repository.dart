import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/os.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/os_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/os_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/os_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'os_repository.g.dart';

@Injectable(singleton: false)
class OSRepositoryImpl extends GenericRepository<OS> {
  final OSDatasourceWeb datasourceWeb;
  final OSDao datasourceDataBase;

  OSRepositoryImpl(
    this.datasourceWeb,
    this.datasourceDataBase,
  );

  @override
  Future<Either<Failure, List<OS>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) => right(List<OSModel>.from(r.map((e) => OSModel.fromMap(e)))),
      );
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<OS> list) async {
    try {
      var modelList = [];
      for (OS entity in list) {
        OSModel model = OSModel(
          id: entity.id,
          idOS: entity.idOS,
          nroOS: entity.nroOS,
          idLibOS: entity.idLibOS,
          idProprAgr: entity.idProprAgr,
          descrProprAgr: entity.descrProprAgr,
          areaProgrOS: entity.areaProgrOS,
          dtInicProgr: entity.dtInicProgr,
          dtFimProgr: entity.dtFimProgr,
          tipoOS: entity.tipoOS,
          idAtiv: entity.idAtiv,
          idAtivOS: entity.idAtivOS,
        );
        modelList.add(model);
      }
      return await datasourceDataBase.addAllGeneric(modelList);
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }
}
