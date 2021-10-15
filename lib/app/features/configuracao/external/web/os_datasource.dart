import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/os_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class OSDatasourceWeb extends GenericDatasource<OSModel> {
  final GetDio getDio;
  OSDatasourceWeb(this.getDio);

  @override
  Future<List<OSModel>> getAllGeneric() async {
    var data = await getDio("http://www.usinasantafe.com.br/fpmmdev/os.php");
    List<OSModel> dados =
        List<OSModel>.from(data.map((data) => OSModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(List<OSModel> list) {
    throw UnimplementedError();
  }
}
