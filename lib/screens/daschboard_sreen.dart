import 'package:app_mamalona1/screens/Inteciones_screen.dart';
import 'package:app_mamalona1/screens/fruitapp_screen.dart';
import 'package:app_mamalona1/screens/saludo_screen.dart';
import 'package:flutter/material.dart';

class DashboarScreen extends StatelessWidget {
  const DashboarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BatiApp")),
      drawer: Drawer(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "data:image/jpeg;base64,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"),
                //Edotar linea anterior
              ),
              accountName: Text("ALberto"),
              accountEmail: Text("leonl4689@gmail.com")),
          ListTile(
            title: Text(
              "Saludo",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text("Mi primer app"),
            leading: Icon(Icons.handshake_outlined),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SaldoScreem()));
            },
          ),
          ListTile(
              title: Text(
                "Fruit App",
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text("Practica 1"),
              leading: Icon(Icons.payment),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FruitApp()));
              }),
          ListTile(
              title: Text(
                "Inteciones APP",
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text("Practica 2"),
              leading: Icon(Icons.phone_android),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => IntecionesScreen()));
              })
        ],
      )),
    );
  }
}
