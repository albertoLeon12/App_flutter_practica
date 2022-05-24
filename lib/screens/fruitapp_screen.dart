import 'package:flutter/material.dart';

class FruitApp extends StatefulWidget {
  FruitApp({Key? key}) : super(key: key);

  @override
  State<FruitApp> createState() => _FruitAppState();
}

class _FruitAppState extends State<FruitApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.green[200],
          leading: Row(
            children: <Widget>[
              SizedBox(
                width: 5.0,
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 20.0,
            ),
          ],
        ),
        backgroundColor: Colors.amber[200],
      ),
    );
  }
}
