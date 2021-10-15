import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/r_os_ativ_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class ROSAtivDatasourceWeb extends GenericDatasource<ROSAtivModel> {
  final GetDio getDio;
  ROSAtivDatasourceWeb(this.getDio);

  @override
  Future<List<ROSAtivModel>> getAllGeneric() async {
    var data =
        await getDio("http://www.usinasantafe.com.br/fpmmdev/rosativ.php");
    List<ROSAtivModel> dados = List<ROSAtivModel>.from(
        data.map((data) => ROSAtivModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(List<ROSAtivModel> list) {
    throw UnimplementedError();
  }
}
