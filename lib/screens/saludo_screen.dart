import 'package:flutter/material.dart';

class SaldoScreem extends StatelessWidget {
  const SaldoScreem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Por ti baby, seria Batman"),
      ),
      body: Center(
        child: Image.asset("images/logo.png"),
      ),
    );
  }
}
