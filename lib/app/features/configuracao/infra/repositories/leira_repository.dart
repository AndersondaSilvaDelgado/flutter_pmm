import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/leira.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/leira_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/leira_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/leira_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'leira_repository.g.dart';

@Injectable(singleton: false)
class LeiraRepositoryImpl extends GenericRepository<Leira> {
  final LeiraDatasourceWeb datasourceWeb;
  final LeiraDao datasourceDataBase;

  LeiraRepositoryImpl(
    this.datasourceWeb,
    this.datasourceDataBase,
  );

  @override
  Future<Either<Failure, List<Leira>>> getAllGeneric() async {
    try {
      var data = await datasourceWeb.getAllGeneric();
      return data.fold(
        (l) => left(l),
        (r) =>
            right(List<LeiraModel>.from(r.map((e) => LeiraModel.fromMap(e)))),
      );
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<Leira> list) async {
    try {
      var modelList = [];
      for (Leira entity in list) {
        LeiraModel model = LeiraModel(
          idLeira: entity.idLeira,
          codLeira: entity.codLeira,
          statusLeira: entity.statusLeira,
        );
        modelList.add(model);
      }
      return await datasourceDataBase.addAllGeneric(modelList);
    } catch (e) {
      return Left(ErrorConvertRepository());
    }
  }
}
