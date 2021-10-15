import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/pressao_bocal_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class PressaoBocalDatasourceWeb extends GenericDatasource<PressaoBocalModel> {
  final GetDio getDio;
  PressaoBocalDatasourceWeb(this.getDio);

  @override
  Future<List<PressaoBocalModel>> getAllGeneric() async {
    var data =
        await getDio("http://www.usinasantafe.com.br/fpmmdev/pressaobocal.php");
    List<PressaoBocalModel> dados = List<PressaoBocalModel>.from(
        data.map((data) => PressaoBocalModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<PressaoBocalModel> list) {
    throw UnimplementedError();
  }
}
