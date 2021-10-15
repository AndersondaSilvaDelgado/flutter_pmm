import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/r_equip_ativ_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class REquipAtivDatasourceWeb extends GenericDatasource<REquipAtivModel> {
  final GetDio getDio;
  REquipAtivDatasourceWeb(this.getDio);

  @override
  Future<List<REquipAtivModel>> getAllGeneric() async {
    var data =
        await getDio("http://www.usinasantafe.com.br/fpmmdev/requipativ.php");
    List<REquipAtivModel> dados = List<REquipAtivModel>.from(
        data.map((data) => REquipAtivModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<REquipAtivModel> list) {
    throw UnimplementedError();
  }
}
