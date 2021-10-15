import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/datasources/generic_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/equip_seg_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class EquipSegDatasourceWeb extends GenericDatasource<EquipSegModel> {
  final GetDio getDio;
  EquipSegDatasourceWeb(this.getDio);

  @override
  Future<List<EquipSegModel>> getAllGeneric() async {
    var data =
        await getDio("http://www.usinasantafe.com.br/fpmmdev/equipseg.php");
    List<EquipSegModel> dados = List<EquipSegModel>.from(
        data.map((data) => EquipSegModel.fromJson(data)));
    return dados;
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(List<EquipSegModel> list) {
    throw UnimplementedError();
  }
}
