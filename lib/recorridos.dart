import 'package:flutter/material.dart';

class Recorridos extends StatelessWidget {
  //Container que explica la dinámica de los recorridos

  //Titulo de la pagina
  Widget headRecorridos() {
    return Card(
      child: Text(
        '#PatinemosJuntos',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 40),
      ),
      color: Colors.pink,
    );
  }

  //Descripción de las fechas
  Widget infoRecorridos() {
    return Container(
      child: Text(
        'Acompáñanos cada viernes en punto de las'
        ' 2 pm en Islas para realizar una roleada por la ciudad. También nos puedes'
        ' encontrar los domingos a las 11 am cerca del metro Hidalgo. La ruta del viernes se'
        ' publica en nuestras redes sociales los jueves por la noche. La ruta del domingo se'
        ' decide ese mismo día',
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 15),
      ),
    );
  }

  //Titulo de las fotos que se muestran
  Widget fotos() {
    return Container(
        child: Text(
      'Revive los momentos que compartimos el pasado viernes :)',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20, color: Colors.purple),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recorridos',
            style: TextStyle(fontSize: 23, color: Colors.pink)),
        backgroundColor: Colors.black,
      ),

      //Cuerpo de la pagina
      body: ListView(
        children: <Widget>[
          headRecorridos(),
          Divider(),
          infoRecorridos(),
          Divider(),
          fotos(),

          //Se utiliza para poder mover la pantalla de derecha a izquierda
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            //Fila de imagenes
            child: Row(
              children: <Widget>[
                Container(
                  child: Image(
                    image: AssetImage('images/Recorrido2.jpg'),
                    height: 400,
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage('images/Recorrido3.jpg'),
                    height: 400,
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage('images/Recorrido4.jpg'),
                    height: 400,
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage('images/Recorrido5.jpg'),
                    height: 400,
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage('images/Recorrido6.jpg'),
                    height: 400,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
