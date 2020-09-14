import 'package:flutter/material.dart';
import 'package:rollers_unam/clases.dart';
import 'package:rollers_unam/productos.dart';
import 'package:rollers_unam/recorridos.dart';

class Principal extends StatefulWidget {
  //Llaves para transferir información con "Registro"
  Principal({Key key, this.cabecera, this.dato}) : super(key: key);
  //Variables para transmitir informacion con "Registro"
  final String cabecera;
  final String dato;

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  //Botón para acceder a la página "Clases"
  Widget botonClases(BuildContext context) {
    return Container(
      color: Colors.green,
      child: FlatButton(
        child: Text(
          'Clases',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Clases()));
        },
      ),
    );
  }

  //Botón para acceder a la página "Recorridos"
  Widget botonRecorridos(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: FlatButton(
        child: Text(
          'Recorridos',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Recorridos()));
        },
      ),
    );
  }

  //Botón para acceder a la página "Productos"
  Widget botonProductos(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: FlatButton(
        child: Text(
          'Productos',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Productos()));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar con el nombre del usuario
      appBar: AppBar(
        title: Text('Rollers UNAM - ' + widget.cabecera,
            style: TextStyle(color: Colors.green)),
        backgroundColor: Colors.amber,
      ),

      //Cuerpo de la página
      body: ListView(
        children: <Widget>[
          Expanded(
            child: botonClases(context),
          ),
          Expanded(
            child: botonRecorridos(context),
          ),
          Expanded(
            child: botonProductos(context),
          )
        ],
      ),
    );
  }
}
