import 'package:app_mamalona1/screens/daschboard_sreen.dart';
import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utiles/contants.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _remeberMe = false;
  String password = "";
  String correo = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 147, 146, 145),
                      Color.fromARGB(255, 117, 114, 114),
                      Color.fromARGB(255, 73, 72, 72),
                      Color.fromARGB(255, 34, 34, 34),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        child: Image.asset("images/perfil.png"),
                      ),
                      Text(
                        "Log In",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "OpenSans",
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      _builEmail(),
                      SizedBox(
                        height: 30.0,
                      ),
                      _builPassword(),
                      _builForgetPass(),
                      _builRemeber(),
                      _builButtonLogin(),
                      Row(
                        children: [
                          Text(
                            "No tienes centa?",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Sig in",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

// widget
  Widget _builEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "E-mail",
          style: kLabelStyle,
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.center,
          decoration: kBoxDecorationsStyle,
          height: 60.0,
          child: TextField(
            onSubmitted: (value) {
              setState(() {
                correo = value;
              });
            },
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: "OpenSans",
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              hintText: "Example@mail.com",
              hintStyle: kHintTextStyle,
            ),
          ),
        )
      ],
    );
  }

  Widget _builPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Contraseña",
          style: kLabelStyle,
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.center,
          decoration: kBoxDecorationsStyle,
          height: 60.0,
          child: TextField(
            obscureText: true,
            onSubmitted: (value) {
              setState(() {
                password = value;
              });
            },
            style: TextStyle(
              color: Colors.black,
              fontFamily: "OpenSans",
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              hintText: "Contraseña",
              hintStyle: kHintTextStyle,
            ),
          ),
        )
      ],
    );
  }

  Widget _builForgetPass() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          textStyle: const TextStyle(fontSize: 15.0),
          padding: EdgeInsets.only(right: 0.0),
        ),
        onPressed: () => print(correo),
        child: const Text(
          "¿Olvido su contraseña?",
        ),
      ),
    );
  }

  Widget _builRemeber() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _remeberMe,
              checkColor: Color.fromARGB(255, 255, 0, 0),
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _remeberMe = value!;
                });
              },
            ),
          ),
          Text(
            "Recuerdame",
            style: kLabelStyle,
          ),
        ],
      ),
    );
  }

  Widget _builButtonLogin() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            shadowColor: const Color.fromARGB(255, 218, 205, 205),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            minimumSize: Size(400, 40)),
        onPressed: () async {
          if (password == "BOTITAS1" && correo == "leonl4689@gmail.com") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashboarScreen()),
            );
          } else {
            _showAlertDialog();
          }
        },
        label: const Text(
          "Iniciar Sesion",
          style: TextStyle(
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: "OpenSans",
          ),
        ),
        icon: const Icon(Icons.login_sharp),
      ),
    );
  }

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (buildcontext) {
        return AlertDialog(
          title: Text("Vuelva a intentarlo"),
          content: Text("Contraseña o correo incorrectos"),
          actions: <Widget>[
            RaisedButton(
              child: Text(
                "CERRAR",
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
