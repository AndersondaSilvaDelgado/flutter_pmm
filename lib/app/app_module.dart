import 'package:flutter_modular/flutter_modular.dart';

import 'features/configuracao/configuracao_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: ConfiguracaoModule()),
  ];
}
