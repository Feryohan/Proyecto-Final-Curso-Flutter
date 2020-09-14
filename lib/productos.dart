import 'package:flutter/material.dart';

class Productos extends StatelessWidget {
  Widget infoProductos() {
    return Column(
      children: [
        Card(
          child: Text(
            'Adquiere con nosotros todo lo necesario para una roleada segura y emocionante',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.brown, fontSize: 30),
          ),
        ),
        Divider(),
        Container(
            child: Image(image: AssetImage('images/Productos1.jpg')),
            height: 400),
        Divider(),
        Container(
            child: Image(image: AssetImage('images/Productos2.jpg')),
            height: 400),
        Divider(),
        Container(
            child: Image(image: AssetImage('images/Productos3.jpg')),
            height: 400)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos',
            style: TextStyle(fontSize: 23, color: Colors.brown)),
        backgroundColor: Colors.black,
      ),

      //Cuerpo de la pagina
      body: ListView(
        children: [infoProductos()],
      ),
    );
  }
}
