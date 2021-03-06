import 'package:app_mamalona1/screens/fruitapp_screen.dart';
import 'package:app_mamalona1/screens/login_screen.dart';
import 'package:app_mamalona1/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
