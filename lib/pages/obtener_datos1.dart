import 'package:flutter/material.dart';
import 'package:routes/pages/obtener_datos2.dart';

class ObtenerDatos1 extends StatefulWidget {
  ObtenerDatos1({Key key}) : super(key: key);

  @override
  _ObtenerDatos1State createState() => _ObtenerDatos1State();
}

class _ObtenerDatos1State extends State<ObtenerDatos1>  {

  String data = "Este texto cambiara al volver" ;

  _navigateToObtenerDatos2(BuildContext context) async {
     final r = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ObtenerDatos2()),
    );
     setState(() {
       data = r ;
     });
  }

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
              Text(data, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple)),
              RaisedButton(
                color: Colors.red,
                elevation: 5,
                child: Text('Obtener dato', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  _navigateToObtenerDatos2(context) ;
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