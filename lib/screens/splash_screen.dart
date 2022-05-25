import 'package:app_mamalona1/screens/daschboard_sreen.dart';
import 'package:app_mamalona1/screens/fruitapp_screen.dart';
import 'package:app_mamalona1/screens/login_screen.dart';
import 'package:app_mamalona1/screens/saludo_screen.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: LoginScreen(),
      duration: 3000,
      imageSize: 130,
      imageSrc: "images/logo.png",
      text: "Bienvenido !!!",
      textType: TextType.NormalText,
      textStyle: const TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: Colors.white,
    );
  }
}
