import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/leira_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class LeiraDatasourceWeb extends GenericDatasource<LeiraModel> {
  final GetDio getDio;
  LeiraDatasourceWeb(this.getDio);

  @override
  Future<List<LeiraModel>> getAllGeneric() async {
    var data = await getDio("http://www.usinasantafe.com.br/fpmmdev/leira.php");
    List<LeiraModel> dados =
        List<LeiraModel>.from(data.map((data) => LeiraModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(List<LeiraModel> list) {
    throw UnimplementedError();
  }
}
