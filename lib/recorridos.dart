import 'package:flutter/material.dart';

class Recorridos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recorridos', style: TextStyle(color: Colors.pink)),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Image(image: AssetImage('images/Registro.jpg')),
      ),
    );
  }
}
