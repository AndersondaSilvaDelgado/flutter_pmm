import 'package:flutter_pmm/app/features/configuracao/external/db/dao/atividade_dao.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/atividade_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/bocal_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/config_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/equip_seg_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/equip_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/frente_table.dart';
import 'package:flutter_pmm/app/features/configuracao/external/db/table/funcionario_table.dart';
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
  FuncionarioTable,
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

  DataBase._internal()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'pmm_db', logStatements: true)) {
    atividadeDao = AtividadeDao(this);
  }

  @override
  int get schemaVersion => 1;
}
