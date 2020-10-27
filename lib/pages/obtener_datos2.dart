import 'package:flutter/material.dart';

class ObtenerDatos2 extends StatelessWidget {

  ObtenerDatos2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Obtener de datos'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.red,
                elevation: 5,
                child: Text('Enviar "BaseBall"', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.pop(context, "BaseBall") ;
                },
              ),
              RaisedButton(
                color: Colors.red,
                elevation: 5,
                child: Text('Enviar "Football"', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  Navigator.pop(context, "Football") ;
                },
              )
            ],
          ),
        )
    );
  }
}