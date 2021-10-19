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
  Future<Either<Failure, List<AtividadeModel>>> getAllGeneric() async {
    try {
      var data = await getDio(
          "http://www.usinasantafe.com.br/fpmmdev/view/atividade.php");
      return data.fold(
          (l) => left(l),
          (r) => r.isEmpty
              ? left(EmptyList())
              : right(List<AtividadeModel>.from(
                  r.map((e) => AtividadeModel.fromMap(e)))));
    } catch (e) {
      return Left(ErrorDesconhecido());
    }
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<AtividadeModel> list) {
    throw UnimplementedError();
  }
}
