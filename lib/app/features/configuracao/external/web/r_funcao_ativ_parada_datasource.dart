import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/r_funcao_ativ_parada_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

part 'r_funcao_ativ_parada_datasource.g.dart';

@Injectable(singleton: false)
class RFuncaoAtivParadaDatasourceWeb
    extends GenericDatasource<RFuncaoAtivParadaModel> {
  final GetDio getDio;
  RFuncaoAtivParadaDatasourceWeb(this.getDio);

  @override
  Future<Either<Failure, List<RFuncaoAtivParadaModel>>> getAllGeneric() async {
    try {
      var data = await getDio(
          "http://www.usinasantafe.com.br/fpmmdev/rfuncaoativparada.php");
      return data.fold(
          (l) => left(l),
          (r) => r.isEmpty
              ? left(EmptyList())
              : right(List<RFuncaoAtivParadaModel>.from(
                  r.map((e) => RFuncaoAtivParadaModel.fromMap(e)))));
    } catch (e) {
      return Left(ErrorDesconhecido());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(
      List<RFuncaoAtivParadaModel> list) {
    throw UnimplementedError();
  }
}
