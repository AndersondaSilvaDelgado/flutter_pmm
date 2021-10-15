import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/presenter/store/configuracao_store.dart';

class ConfiguracaoPage extends StatefulWidget {
  const ConfiguracaoPage({Key? key}) : super(key: key);

  @override
  _ConfiguracaoPageState createState() => _ConfiguracaoPageState();
}

class _ConfiguracaoPageState
    extends ModularState<ConfiguracaoPage, ConfiguracaoStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CONFIGURAÇÃO"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              left: 8.0,
              right: 8.0,
            ),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Digitar o Equipamento',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Valor da Senha Nula! Por favor, Insira o valor da Senha.';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              left: 8.0,
              right: 8.0,
            ),
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Digitar a Senha',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Valor da Senha Nula! Por favor, Insira o valor da Senha.';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 4.0,
              left: 8.0,
              right: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    controller.recDados();
                  },
                  child: const Text('OK'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
