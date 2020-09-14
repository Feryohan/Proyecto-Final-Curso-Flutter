import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Clases extends StatelessWidget {
  //Columna con la informacion de las clases en CU
  Widget infoClases() {
    return Column(
      children: [
        Container(
          child: Text('Ven! Aprende y patina con nosotros '),
        ),
        Container(
          child: Text('Rollers UNAM invita a toda la comunidad universitaria y'
              ' al publico en general a sumarse a las clases GRATUITAS que se imparten en'
              ' Ciudad Universitaria. Contamos con diferentes niveles, desde los principiantes'
              ' hasta los más avanzados'),
        ),
        Container(
          child: Text('¿Cuándo?'),
        ),
        Container(
          child: Text('Todos los viernes de 12:00 a 2:00 pm'),
        ),
        Container(
          child: Text('¿Dónde?'),
        ),
        Container(
          child: Text(
              'En la explanada roja frente al COE (entre arquitectura e ingeniería)'
              ' las Islas, Ciudad Universitaria'),
        ),
        Container(
          child: Text(
              'Recuerda traer rópa comoda, patines, protecciones e hidratación'),
        ),
        Divider(),
        Container(
          child: Image(
            image: AssetImage('images/Clases1.jpg'),
            height: 400,
          ),
        ),
        Divider(),
        Container(
          child: Image(
            image: AssetImage('images/Clases2.jpg'),
            height: 400,
          ),
        ),
        Divider(),
        Container(
          child: Image(
            image: AssetImage('images/Clases3.jpg'),
            height: 400,
          ),
        ),
        Divider(),
        Container(
          child: Text(
              'No olvides visitar nuestro canal en youtube "Roller Nerd"'
              ' donde te explicamos los conceptos fundamentales para dominar'
              ' cada aspecto involucrado con el patinaje'),
        )
      ],
    );
  }

  //Fila con la informacion de los videos tutoriales en Youtube
  Widget rollerNerd() {
    return Row(
      children: [
        Divider(),
        Container(
          child: Image(
            image: AssetImage('images/ClasesPracticas.jpg'),
            height: 400,
          ),
        ),
        Divider(),
        Container(
          child: Image(
            image: AssetImage('images/ClasesOffRoad.jpg'),
            height: 400,
          ),
        ),
        Divider(),
        Container(
          child: Image(
            image: AssetImage('images/ClasesTips.jpg'),
            height: 400,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clases', style: TextStyle(color: Colors.green)),
        backgroundColor: Colors.black,
      ),

      //Cuerpo de la página
      body: ListView(
        children: [infoClases(), rollerNerd()],
      ),
    );
  }
}
