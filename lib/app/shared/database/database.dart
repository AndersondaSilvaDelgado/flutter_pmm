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
import 'package:flutter_pmm/app/features/configuracao/external/db/table/atividade_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/bocal_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/config_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/equip_seg_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/equip_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/frente_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/func_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/item_checklist_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/leira_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/oper_motomec_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/os_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/parada_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/pressao_bocal_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/produto_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/propriedade_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/r_ativ_parada_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/r_equip_ativ_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/r_funcao_ativ_parada_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/r_os_ativ_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/turno_table.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'database.g.dart';

@UseMoor(tables: [
  AtividadeTable,
  BocalTable,
  ConfigTable,
  EquipSegTable,
  EquipTable,
  FrenteTable,
  FuncTable,
  ItemCheckListTable,
  LeiraTable,
  OperMotoMecTable,
  OSTable,
  ParadaTable,
  PressaoBocalTable,
  ProdutoTable,
  PropriedadeTable,
  RAtivParadaTable,
  REquipAtivTable,
  RFuncaoAtivParadaTable,
  ROSAtivTable,
  TurnoTable,
])
class DataBase extends _$DataBase {
  static DataBase instance = DataBase._internal();
  late AtividadeDao atividadeDao;
  late BocalDao bocalDao;
  late EquipDao equipDao;
  late EquipSegDao equipSegDao;
  late FrenteDao frenteDao;
  late FuncDao funcDao;
  late ItemCheckListDao itemCheckListDao;
  late LeiraDao leiraDao;
  late OperMotoMecDao operMotoMecDao;
  late OSDao osDao;
  late ParadaDao paradaDao;
  late PressaoBocalDao pressaoBocalDao;
  late ProdutoDao produtoDao;
  late PropriedadeDao propriedadeDao;
  late RAtivParadaDao rAtivParadaDao;
  late REquipAtivDao rEquipAtivDao;
  late RFuncaoAtivParadaDao rFuncaoAtivParadaDao;
  late ROSAtivDao rROSAtivDao;
  late TurnoDao turnoDao;

  DataBase._internal()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'pmm_db', logStatements: true)) {
    atividadeDao = AtividadeDao(this);
    bocalDao = BocalDao(this);
    equipDao = EquipDao(this);
    equipSegDao = EquipSegDao(this);
    frenteDao = FrenteDao(this);
    funcDao = FuncDao(this);
    itemCheckListDao = ItemCheckListDao(this);
    leiraDao = LeiraDao(this);
    operMotoMecDao = OperMotoMecDao(this);
    osDao = OSDao(this);
    paradaDao = ParadaDao(this);
    pressaoBocalDao = PressaoBocalDao(this);
    produtoDao = ProdutoDao(this);
    propriedadeDao = PropriedadeDao(this);
    rAtivParadaDao = RAtivParadaDao(this);
    rEquipAtivDao = REquipAtivDao(this);
    rFuncaoAtivParadaDao = RFuncaoAtivParadaDao(this);
    rROSAtivDao = ROSAtivDao(this);
    turnoDao = TurnoDao(this);
  }

  @override
  int get schemaVersion => 1;
}
