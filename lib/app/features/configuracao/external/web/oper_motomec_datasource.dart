import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/oper_motomec_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class OperMotoMecDatasourceWeb extends GenericDatasource<OperMotoMecModel> {
  final GetDio getDio;
  OperMotoMecDatasourceWeb(this.getDio);

  @override
  Future<List<OperMotoMecModel>> getAllGeneric() async {
    var data =
        await getDio("http://www.usinasantafe.com.br/fpmmdev/opermotomec.php");
    List<OperMotoMecModel> dados = List<OperMotoMecModel>.from(
        data.map((data) => OperMotoMecModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<OperMotoMecModel> list) {
    throw UnimplementedError();
  }
}
