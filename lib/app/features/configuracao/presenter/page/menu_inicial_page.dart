import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MenuInicialPage extends StatefulWidget {
  const MenuInicialPage({Key? key}) : super(key: key);

  @override
  _MenuInicialPageState createState() => _MenuInicialPageState();
}

class _MenuInicialPageState extends State<MenuInicialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MENU INICIAL",
          textAlign: TextAlign.center,
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: <Widget>[
            ListTile(
                title: _texto("BOLETIM"),
                onTap: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text('TESTE')));
                }),
            ListTile(
              title: _texto("CONFIGURAÇÃO"),
              onTap: () => Modular.to.navigate('/senha'),
            ),
            ListTile(
                title: _texto("SAIR"),
                onTap: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text('TESTE')));
                }),
          ],
        ),
      ),
    );
  }

  Text _texto(String title) => Text(title,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ));
}
