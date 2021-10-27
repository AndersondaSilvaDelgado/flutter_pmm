import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/usecases/receber_salvar_bd_usecases.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/atividade_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/bocal_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/equip_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/equip_seg_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/frente_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/func_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/item_checklist_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/leira_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/oper_motomec_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/os_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/parada_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/pressao_bocal_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/produto_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/propriedade_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/r_ativ_parada_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/r_equip_ativ_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/r_funcao_ativ_parada_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/r_os_ativ_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/dao/turno_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/atividade_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/bocal_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/equip_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/equip_seg_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/frente_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/func_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/item_checklist_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/leira_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/oper_motomec_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/os_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/parada_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/pressao_bocal_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/produto_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/propriedade_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/r_ativ_parada_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/r_equip_ativ_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/r_funcao_ativ_parada_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/r_os_ativ_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/turno_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/atividade_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/bocal_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/equip_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/equip_seg_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/frente_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/func_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/item_checklist_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/leira_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/oper_motomec_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/os_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/parada_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/pressao_bocal_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/produto_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/propriedade_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/r_ativ_parada_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/r_equip_ativ_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/r_funcao_ativ_parada_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/r_os_ativ_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/turno_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/presenter/page/configuracao_page.dart';
import 'package:flutter_pmm/app/features/configuracao/presenter/page/menu_inicial_page.dart';
import 'package:flutter_pmm/app/features/configuracao/presenter/page/senha_page.dart';
import 'package:flutter_pmm/app/features/configuracao/presenter/store/configuracao_store.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class ConfiguracaoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => Dio()),
    Bind((i) => DataBase.instance),
    $GetDio,
    $ReceberSalvarBDUsecasesImpl,
    $ConfiguracaoStore,
    $AtividadeRepositoryImpl,
    $AtividadeDatasourceWeb,
    $AtividadeDao,
    $BocalRepositoryImpl,
    $BocalDatasourceWeb,
    $BocalDao,
    $EquipSegRepositoryImpl,
    $EquipSegDatasourceWeb,
    $EquipSegDao,
    $EquipRepositoryImpl,
    $EquipDatasourceWeb,
    $EquipDao,
    $FrenteRepositoryImpl,
    $FrenteDatasourceWeb,
    $FrenteDao,
    $FuncRepositoryImpl,
    $FuncDatasourceWeb,
    $FuncDao,
    $ItemCheckListRepositoryImpl,
    $ItemCheckListDatasourceWeb,
    $ItemCheckListDao,
    $LeiraRepositoryImpl,
    $LeiraDatasourceWeb,
    $LeiraDao,
    $OperMotoMecRepositoryImpl,
    $OperMotoMecDatasourceWeb,
    $OperMotoMecDao,
    $OSRepositoryImpl,
    $OSDatasourceWeb,
    $OSDao,
    $ParadaRepositoryImpl,
    $ParadaDatasourceWeb,
    $ParadaDao,
    $PressaoBocalRepositoryImpl,
    $PressaoBocalDatasourceWeb,
    $PressaoBocalDao,
    $ProdutoRepositoryImpl,
    $ProdutoDatasourceWeb,
    $ProdutoDao,
    $PropriedadeRepositoryImpl,
    $PropriedadeDatasourceWeb,
    $PropriedadeDao,
    $RAtivParadaRepositoryImpl,
    $RAtivParadaDatasourceWeb,
    $RAtivParadaDao,
    $REquipAtivRepositoryImpl,
    $REquipAtivDatasourceWeb,
    $REquipAtivDao,
    $RFuncaoAtivParadaRepositoryImpl,
    $RFuncaoAtivParadaDatasourceWeb,
    $RFuncaoAtivParadaDao,
    $ROSAtivRepositoryImpl,
    $ROSAtivDatasourceWeb,
    $ROSAtivDao,
    $TurnoRepositoryImpl,
    $TurnoDatasourceWeb,
    $TurnoDao,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => const MenuInicialPage()),
    ChildRoute('/senha', child: (_, args) => const SenhaPage()),
    ChildRoute('/configuracao', child: (_, args) => const ConfiguracaoPage()),
  ];
}
