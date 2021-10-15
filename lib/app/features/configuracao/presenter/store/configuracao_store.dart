import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/domain/usecases/receber_salvar_bd_usecases.dart';
import 'package:mobx/mobx.dart';

part 'configuracao_store.g.dart';

@Injectable(singleton: false)
class ConfiguracaoStore = _ConfiguracaoStoreBase with _$ConfiguracaoStore;

abstract class _ConfiguracaoStoreBase with Store {
  final ReceberSalvarBDUsecasesImpl receberDados;
  _ConfiguracaoStoreBase(this.receberDados);

  @action
  Future recDados() async {
    // ignore: avoid_print
    //print('teste');
    await receberDados.receber();
  }
}
