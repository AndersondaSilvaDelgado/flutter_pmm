import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/usecases/receber_salvar_bd_usecases.dart';
import 'package:flutter_pmm/app/features/configuracao/external/web/atividade_datasource.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/atividade_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/presenter/page/configuracao_page.dart';
import 'package:flutter_pmm/app/features/configuracao/presenter/page/menu_inicial_page.dart';
import 'package:flutter_pmm/app/features/configuracao/presenter/page/senha_page.dart';
import 'package:flutter_pmm/app/features/configuracao/presenter/store/configuracao_store.dart';
import 'package:flutter_pmm/app/shared/web/get_dio.dart';

class ConfiguracaoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => Dio()),
    $GetDio,
    $AtividadeRepositoryImpl,
    $ReceberSalvarBDUsecasesImpl,
    $ConfiguracaoStore,
    $AtividadeDatasourceWeb,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, args) => const MenuInicialPage()),
    ChildRoute('/senha', child: (_, args) => const SenhaPage()),
    ChildRoute('/configuracao', child: (_, args) => const ConfiguracaoPage()),
  ];
}
