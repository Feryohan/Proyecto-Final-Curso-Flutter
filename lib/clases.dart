import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Clases extends StatelessWidget {
  //Columna con la informacion de las clases en CU
  Widget infoClases() {
    return Column(
      children: [
        //Primer Card
        Card(
          child: Text(
            'Ven! Aprende y Patina Con Nosotros',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          color: Colors.green,
          shadowColor: Colors.red,
        ),
        //Primer Container
        Container(
          child: Text(
            'Rollers UNAM invita a toda la comunidad universitaria y'
            ' al publico en general a sumarse a las clases GRATUITAS que se imparten en'
            ' Ciudad Universitaria. Contamos con diferentes niveles, desde los principiantes'
            ' hasta los más avanzados',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 15),
          ),
        ),
        Divider(),
        //Segundo Card
        Card(
          child: Text(
            '¿Cuándo?',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          color: Colors.green,
        ),
        //Segundo Container
        Container(
          child: Text(
            'Todos los viernes de 12:00 a 2:00 pm',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
        ),
        //Tercera Card
        Card(
          child: Text(
            '¿Dónde?',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          color: Colors.green,
        ),
        //Tercer Container
        Container(
          child: Text(
            'En la explanada roja frente al COE (entre arquitectura e ingeniería)'
            ' las Islas, Ciudad Universitaria',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
        ),
        Divider(),
        //Cuarto Container
        Container(
          child: Text(
            'Recuerda traer rópa comoda, patines, protecciones e hidratación',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 15),
          ),
        ),
        Divider(),
        //Primera Imagen
        Container(
          child: Image(
            image: AssetImage('images/Clases1.jpg'),
            height: 400,
          ),
        ),
        Divider(),
        //Segunda Imagen
        Container(
          child: Image(
            image: AssetImage('images/Clases2.jpg'),
            height: 400,
          ),
        ),
        Divider(),
        //Tercera Imagen
        Container(
          child: Image(
            image: AssetImage('images/Clases3.jpg'),
            height: 400,
          ),
        ),
        Divider(),
        //Cuarta Card
        Card(
          child: Text(
              'No olvides visitar nuestro canal en youtube "Roller Nerd"'
              ' donde te explicamos los conceptos fundamentales para dominar'
              ' cada aspecto involucrado con el patinaje',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.white)),
          color: Colors.red[300],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Clases', style: TextStyle(fontSize: 23, color: Colors.green)),
        backgroundColor: Colors.black,
      ),

      //Cuerpo de la página
      body: ListView(
        children: [infoClases()],
      ),
    );
  }
}
