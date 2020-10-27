import 'package:flutter/material.dart';
import 'package:routes/pages/navegar_y_volver2.dart';

class NavegarYVolver1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.red,
              elevation: 5,
              child: Text('IR', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavegarYVolver2()),
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