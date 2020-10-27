import 'package:flutter/material.dart';
import 'package:routes/pages/navegar_y_volver2.dart';

class EnviarDatos2 extends StatelessWidget {

  final String data;

  // En el constructor, se requiere el objeto Todo
  EnviarDatos2({Key key, @required this.data}) : super(key: key);

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
              Text(data, style: TextStyle(color: Colors.green, fontSize: 28, fontWeight: FontWeight.bold)),

              RaisedButton(
                color: Colors.red,
                elevation: 5,
                child: Text('VOLVER', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.pop(context) ;
                },
              )

            ],
          ),
        )
    );
  }
}