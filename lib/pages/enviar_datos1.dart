import 'package:flutter/material.dart';
import 'package:routes/pages/enviar_datos2.dart';
import 'package:routes/pages/navegar_y_volver2.dart';

class EnviarDatos1 extends StatelessWidget {

  String data = "Flutter es genial";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Envio de datos'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(data, style: TextStyle(color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold)),
              RaisedButton(
                color: Colors.red,
                elevation: 5,
                child: Text('Enviar este texto', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EnviarDatos2(data: data,)),
                  );
                },
              ),
              RaisedButton(
                color: Colors.red,
                elevation: 5,
                child: Text('Home', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              )
            ],
          ),
        )
    );
  }
}