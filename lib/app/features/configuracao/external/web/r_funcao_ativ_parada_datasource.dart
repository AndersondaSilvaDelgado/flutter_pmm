import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/r_funcao_ativ_parada_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class RFuncaoAtivParadaDatasourceWeb
    extends GenericDatasource<RFuncaoAtivParadaModel> {
  final GetDio getDio;
  RFuncaoAtivParadaDatasourceWeb(this.getDio);

  @override
  Future<List<RFuncaoAtivParadaModel>> getAllGeneric() async {
    var data = await getDio(
        "http://www.usinasantafe.com.br/fpmmdev/rfuncaoativparada.php");
    List<RFuncaoAtivParadaModel> dados = List<RFuncaoAtivParadaModel>.from(
        data.map((data) => RFuncaoAtivParadaModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<RFuncaoAtivParadaModel> list) {
    throw UnimplementedError();
  }
}
