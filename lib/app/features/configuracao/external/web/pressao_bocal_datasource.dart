import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/pressao_bocal_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

part 'pressao_bocal_datasource.g.dart';

@Injectable(singleton: false)
class PressaoBocalDatasourceWeb extends GenericDatasource<PressaoBocalModel> {
  final GetDio getDio;
  PressaoBocalDatasourceWeb(this.getDio);

  @override
  Future<Either<Failure, List>> getAllGeneric() async {
    var data = await getDio(
        "http://www.usinasantafe.com.br/pmm_api_dev/view/pressaobocal.php");
    return data.fold(
      (l) => left(l),
      (r) => r.isEmpty ? left(EmptyList()) : right(r),
    );
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<PressaoBocalModel> list) {
    throw UnimplementedError();
  }

  @override
  Future<int> add(PressaoBocalModel entity) {
    throw UnimplementedError();
  }
}
