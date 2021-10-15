import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/turno_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class TurnoDatasourceWeb extends GenericDatasource<TurnoModel> {
  final GetDio getDio;
  TurnoDatasourceWeb(this.getDio);

  @override
  Future<List<TurnoModel>> getAllGeneric() async {
    var data = await getDio("http://www.usinasantafe.com.br/fpmmdev/turno.php");
    List<TurnoModel> dados =
        List<TurnoModel>.from(data.map((data) => TurnoModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(List<TurnoModel> list) {
    throw UnimplementedError();
  }
}
