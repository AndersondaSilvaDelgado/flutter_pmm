import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/frente_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class FrenteDatasourceWeb extends GenericDatasource<FrenteModel> {
  final GetDio getDio;
  FrenteDatasourceWeb(this.getDio);

  @override
  Future<List<FrenteModel>> getAllGeneric() async {
    var data =
        await getDio("http://www.usinasantafe.com.br/fpmmdev/frente.php");
    List<FrenteModel> dados =
        List<FrenteModel>.from(data.map((data) => FrenteModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(List<FrenteModel> list) {
    throw UnimplementedError();
  }
}
