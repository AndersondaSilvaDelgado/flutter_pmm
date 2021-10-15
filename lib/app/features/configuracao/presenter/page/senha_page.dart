import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SenhaPage extends StatefulWidget {
  const SenhaPage({Key? key}) : super(key: key);

  @override
  _SenhaPageState createState() => _SenhaPageState();
}

class _SenhaPageState extends State<SenhaPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      appBar: AppBar(
        title: const Text("SENHA"),
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
                    Modular.to.navigate('/configuracao');
                  },
                  child: const Text('OK'),
                ),
                const SizedBox(width: 5),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: const Text('RETORNAR'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
