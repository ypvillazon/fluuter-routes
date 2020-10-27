import 'package:flutter/material.dart';

class NavegarYVolver2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.red,
          elevation: 5,
          child: Text('VOLVER', style: TextStyle(color: Colors.white)),
          onPressed: () {
            Navigator.pop(context) ;
          },
        ),
      ),
    );
  }
}