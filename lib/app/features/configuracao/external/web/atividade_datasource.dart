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
  Future<Either<Failure, List>> getAllGeneric() async {
    var data = await getDio(
        "http://www.usinasantafe.com.br/pmm_api_dev/view/atividade.php");
    return data.fold(
      (l) => left(l),
      (r) => r.isEmpty ? left(ErrorRetEmptyListWS()) : right(r),
    );
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<AtividadeModel> list) {
    throw UnimplementedError();
  }

  @override
  Future<int> add(AtividadeModel entity) {
    throw UnimplementedError();
  }
}
