import 'package:flutter/material.dart';
import 'package:routes/pages/navegar_y_volver2.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.red,
              elevation: 5,
              child: Text('Navegar y volver de una ruta', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/navegar_y_volver');
              },
            ),

            RaisedButton(
              color: Colors.red,
              elevation: 5,
              child: Text('Enviar datos a una ruta', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/enviar_datos');
              },
            ),

            RaisedButton(
              color: Colors.red,
              elevation: 5,
              child: Text('Obtener datos de una ruta al volver', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, '/obtener_datos');
              },
            )

          ],
        ),
      ),
    );
  }
}