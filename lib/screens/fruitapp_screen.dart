import 'package:app_mamalona1/screens/frutiapp/counter.dart';
import 'package:app_mamalona1/screens/frutiapp/images_corousel.dart';
import 'package:flutter/material.dart';

class FruitApp extends StatefulWidget {
  FruitApp({Key? key}) : super(key: key);

  @override
  State<FruitApp> createState() => _FruitAppState();
}

class _FruitAppState extends State<FruitApp> {
  bool _favorito = true;
  void _toggleFavorite() {
    setState(() {
      _favorito = !_favorito;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                CarouseWithIndicatorDemo(),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(50.0),
                        topRight: const Radius.circular(50.0),
                      )),
                  height: 500.0,
                  width: 500.0,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 25.0,
                          ),
                          Text(
                            "Mango",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text("1 each"),
                          SizedBox(
                            height: 20.0,
                          ),
                          CounterDesign(),
                          Text(
                            "Descripcion del Prodcto",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "El mango es una fruta de la Zona Intertropical de pulpa carnosa y dulce. Destaca entre sus principales características su buen sabor. Dicha pulpa puede ser o no fibrosa, siendo la variedad llamada \"mango de hilacha\" la que mayor cantidad de fibra contiene.",
                            style: TextStyle(
                              letterSpacing: 2.0,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 70.0,
                                child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(color: Colors.red),
                                    ),
                                  ),
                                  onPressed: () {
                                    _favorito;
                                  },
                                  icon: _favorito
                                      ? Icon(
                                          Icons.favorite_border,
                                          color: Colors.red,
                                        )
                                      : Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                  label: const Text(""),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                height: 20.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.amber,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                  child: Text(
                                    "Añadir al Carrito",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
