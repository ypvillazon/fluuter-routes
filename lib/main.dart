import 'package:flutter/material.dart';
import 'package:routes/pages/enviar_datos1.dart';
import 'package:routes/pages/navegar_y_volver1.dart';
import 'package:routes/pages/obtener_datos1.dart';
import 'package:routes/ui/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enrutamiento',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      routes: {
        "/home": (context) => Home(),
        "/navegar_y_volver": (context) => NavegarYVolver1(),
        "/enviar_datos": (context) => EnviarDatos1(),
        "/obtener_datos": (context) => ObtenerDatos1()
      },
    );
  }
}
