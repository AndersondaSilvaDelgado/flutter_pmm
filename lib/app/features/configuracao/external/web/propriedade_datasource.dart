import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/propriedade_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class PropriedadeDatasourceWeb extends GenericDatasource<PropriedadeModel> {
  final GetDio getDio;
  PropriedadeDatasourceWeb(this.getDio);

  @override
  Future<List<PropriedadeModel>> getAllGeneric() async {
    var data =
        await getDio("http://www.usinasantafe.com.br/fpmmdev/propriedade.php");
    List<PropriedadeModel> dados = List<PropriedadeModel>.from(
        data.map((data) => PropriedadeModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<PropriedadeModel> list) {
    throw UnimplementedError();
  }
}
