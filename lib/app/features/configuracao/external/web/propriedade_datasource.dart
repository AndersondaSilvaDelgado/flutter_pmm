import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/propriedade_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

part 'propriedade_datasource.g.dart';

@Injectable(singleton: false)
class PropriedadeDatasourceWeb extends GenericDatasource<PropriedadeModel> {
  final GetDio getDio;
  PropriedadeDatasourceWeb(this.getDio);

  @override
  Future<Either<Failure, List>> getAllGeneric() async {
    var data = await getDio(
        "http://www.usinasantafe.com.br/pmm_api_dev/view/propriedade.php");
    return data.fold(
      (l) => left(l),
      (r) => r.isEmpty ? left(EmptyList()) : right(r),
    );
  }

  @override
  Future<Either<Failure, bool>> addAllGeneric(List<PropriedadeModel> list) {
    throw UnimplementedError();
  }

  @override
  Future<int> add(PropriedadeModel entity) {
    // TODO: implement add
    throw UnimplementedError();
  }
}
