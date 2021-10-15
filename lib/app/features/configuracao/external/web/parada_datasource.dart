import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/parada_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class ParadaDatasourceWeb extends GenericDatasource<ParadaModel> {
  final GetDio getDio;
  ParadaDatasourceWeb(this.getDio);

  @override
  Future<List<ParadaModel>> getAllGeneric() async {
    var data =
        await getDio("http://www.usinasantafe.com.br/fpmmdev/parada.php");
    List<ParadaModel> dados =
        List<ParadaModel>.from(data.map((data) => ParadaModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(List<ParadaModel> list) {
    throw UnimplementedError();
  }
}
