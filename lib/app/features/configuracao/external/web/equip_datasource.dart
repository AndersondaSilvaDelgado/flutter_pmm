import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/equip_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class EquipDatasourceWeb extends GenericDatasource<EquipModel> {
  final GetDio getDio;
  EquipDatasourceWeb(this.getDio);

  @override
  Future<List<EquipModel>> getAllGeneric() async {
    var data = await getDio("http://www.usinasantafe.com.br/fpmmdev/equip.php");
    List<EquipModel> dados =
        List<EquipModel>.from(data.map((data) => EquipModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(List<EquipModel> list) {
    throw UnimplementedError();
  }
}
