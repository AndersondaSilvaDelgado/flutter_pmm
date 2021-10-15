import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/func_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class FuncDatasourceWeb extends GenericDatasource<FuncModel> {
  final GetDio getDio;
  FuncDatasourceWeb(this.getDio);

  @override
  Future<List<FuncModel>> getAllGeneric() async {
    var data =
        await getDio("http://www.usinasantafe.com.br/fpmmdev/funcionario.php");
    List<FuncModel> dados =
        List<FuncModel>.from(data.map((data) => FuncModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(List<FuncModel> list) {
    throw UnimplementedError();
  }
}
