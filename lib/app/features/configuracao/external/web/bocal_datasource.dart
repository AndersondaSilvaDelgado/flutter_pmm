import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/bocal_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class BocalDatasourceWeb extends GenericDatasource<BocalModel> {
  final GetDio getDio;
  BocalDatasourceWeb(this.getDio);

  @override
  Future<List<BocalModel>> getAllGeneric() async {
    var data = await getDio("http://www.usinasantafe.com.br/fpmmdev/bocal.php");
    List<BocalModel> dados =
        List<BocalModel>.from(data.map((data) => BocalModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(List<BocalModel> list) {
    throw UnimplementedError();
  }
}
