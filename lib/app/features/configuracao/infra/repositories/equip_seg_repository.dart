import 'package:dartz/dartz.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/entities/equip_seg.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/errors/errors.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/repositories/generic_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/equip_seg_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/models/equip_seg_model.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

class EquipSegRepositoryImpl extends GenericRepository<EquipSeg> {
  final EquipSegDatasourceWeb datasourceWeb;
  EquipSegRepositoryImpl(this.datasourceWeb);

  @override
  Future<Either<ErrorException, List<EquipSeg>>> getAllGeneric() async {
    try {
      List<EquipSegModel> dados = await datasourceWeb.getAllGeneric();
      return Right(dados);
    } catch (e) {
      return Left(ErrorSearch());
    }
  }

  @override
  Future<Either<ErrorException, bool>> addAllGeneric(
      List<EquipSeg> atividadeList) {
    // TODO: implement addAllGeneric
    throw UnimplementedError();
  }
}
