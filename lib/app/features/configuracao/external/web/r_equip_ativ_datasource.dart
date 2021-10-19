import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/r_equip_ativ_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

part 'r_equip_ativ_datasource.g.dart';

@Injectable(singleton: false)
class REquipAtivDatasourceWeb extends GenericDatasource<REquipAtivModel> {
  final GetDio getDio;
  REquipAtivDatasourceWeb(this.getDio);

  @override
  Future<Either<Failure, List<REquipAtivModel>>> getAllGeneric() async {
    try {
      var data =
          await getDio("http://www.usinasantafe.com.br/fpmmdev/requipativ.php");
      return data.fold(
          (l) => left(l),
          (r) => r.isEmpty
              ? left(EmptyList())
              : right(List<REquipAtivModel>.from(
                  r.map((e) => REquipAtivModel.fromMap(e)))));
    } catch (e) {
      return Left(ErrorDesconhecido());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<REquipAtivModel> list) {
    throw UnimplementedError();
  }
}
