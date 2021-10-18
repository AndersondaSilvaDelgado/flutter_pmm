import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/atividade_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

part 'atividade_datasource.g.dart';

@Injectable(singleton: false)
class AtividadeDatasourceWeb extends GenericDatasource<AtividadeModel> {
  final GetDio getDio;
  AtividadeDatasourceWeb(this.getDio);

  @override
  Future<List<AtividadeModel>> getAllGeneric() async {
    var data =
        await getDio("http://www.usinasantafe.com.br/fpmmdev/view/atividade.php");
    List<AtividadeModel> dados = List<AtividadeModel>.from(
        data.map((data) => AtividadeModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<AtividadeModel> list) {
    throw UnimplementedError();
  }
}
