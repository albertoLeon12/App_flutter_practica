import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IntecionesScreen extends StatelessWidget {
  const IntecionesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inteciones"),
      ),
      body: ListView(
        children: [
          Card(
              color: Colors.grey,
              margin: EdgeInsets.all(10),
              child: Column(children: [
                Text(
                  "https://celaya.tecnm.mx/",
                  style: TextStyle(fontSize: 20),
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (!await launchUrl(Uri.parse("https://celaya.tecnm.mx/")))
                      print("Error");
                  },
                  child: Text("Abrir pagina web"),
                )
              ]))
        ],
      ),
    );
  }
}
