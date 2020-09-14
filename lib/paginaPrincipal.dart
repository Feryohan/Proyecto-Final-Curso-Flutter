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
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Clases()));
        },
      ),
    );
  }

  //Imagen de Clases
  Widget imagenClases() {
    return Container(
      child: Image(
        image: AssetImage('images/Clases.jpg'),
      ),
      height: 300,
    );
  }

  //Botón para acceder a la página "Recorridos"
  Widget botonRecorridos(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: FlatButton(
        child: Text(
          'Recorridos',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Recorridos()));
        },
      ),
    );
  }

  //Imagen de Recorridos
  Widget imagenRecorridos() {
    return Container(
      child: Image(
        image: AssetImage('images/Recorridos.jpg'),
      ),
      height: 300,
    );
  }

  //Botón para acceder a la página "Productos"
  Widget botonProductos(BuildContext context) {
    return Container(
      color: Colors.brown,
      child: FlatButton(
        child: Text(
          'Productos',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Productos()));
        },
      ),
    );
  }

  //Imagen de Productos
  Widget imagenProductos() {
    return Container(
      child: Image(
        image: AssetImage('images/Productos.jpg'),
      ),
      height: 300,
    );
  }

  //Card con el email del usuario
  Widget miCorreo() {
    return Card(
      child: Text(
        'Te registraste con el correo: ' + widget.dato,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
      color: Colors.grey[400],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar con el nombre del usuario
      appBar: AppBar(
        title: Text('Rollers UNAM - ' + widget.cabecera,
            style: TextStyle(fontSize: 23, color: Colors.blue[600])),
        backgroundColor: Colors.black,
      ),

      //Cuerpo de la página
      body: ListView(
        children: <Widget>[
          Expanded(
            child: botonClases(context),
          ),
          imagenClases(),
          Divider(),
          Expanded(
            child: botonRecorridos(context),
          ),
          imagenRecorridos(),
          Divider(),
          Expanded(
            child: botonProductos(context),
          ),
          imagenProductos(),
          Divider(),
          Expanded(child: miCorreo())
        ],
      ),
    );
  }
}
