import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/r_ativ_parada_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class RAtivParadaDatasourceWeb extends GenericDatasource<RAtivParadaModel> {
  final GetDio getDio;
  RAtivParadaDatasourceWeb(this.getDio);

  @override
  Future<List<RAtivParadaModel>> getAllGeneric() async {
    var data =
        await getDio("http://www.usinasantafe.com.br/fpmmdev/rativparada.php");
    List<RAtivParadaModel> dados = List<RAtivParadaModel>.from(
        data.map((data) => RAtivParadaModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<RAtivParadaModel> list) {
    throw UnimplementedError();
  }
}
