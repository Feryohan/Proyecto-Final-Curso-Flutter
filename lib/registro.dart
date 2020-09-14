import 'package:flutter/material.dart';
import 'package:rollers_unam/paginaPrincipal.dart';

class Registro extends StatefulWidget {
  @override
  //Creacion del estado Registro
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  //Objetos creados para el controlor
  //Sirven para transmitir la información con la clase "Principal"
  TextEditingController _valorUsuario = new TextEditingController();
  TextEditingController _valorCorreo = new TextEditingController();

  //Imagen principal de la página
  Widget imagenRegistro() {
    return Container(
      child: Image(
        image: AssetImage('images/Registro.jpg'),
      ),
      height: 400,
    );
  }

  //Registro del usuario
  Widget usuario() {
    return TextField(
      controller: _valorUsuario,
      decoration: InputDecoration(
          border: OutlineInputBorder(), labelText: 'Nombre de usuario'),
    );
  }

  //Registro del correo
  Widget correo() {
    return TextField(
      controller: _valorCorreo,
      decoration: InputDecoration(
          border: OutlineInputBorder(), labelText: 'Correo electrónico'),
    );
  }

  //Botón para enviar el registro
  Widget botonRegistro(BuildContext context) {
    return Container(
      color: Colors.red,
      child: FlatButton(
        child: Text('Registrarse', style: TextStyle(color: Colors.white)),
        onPressed: () {
          Navigator.push(
              context,
              //Conexión entre las páginas "Registro" y "Principal"
              MaterialPageRoute(
                  builder: (context) => Principal(
                      cabecera: _valorUsuario.text, dato: _valorCorreo.text)));
        },
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(

        //AppBar con el nombre de la página
        appBar: AppBar(
          title: Text('Registro de Usuario Nuevo'),
          backgroundColor: Colors.red,
        ),

        //Cuerpo de la página
        body: ListView(
          children: <Widget>[
            imagenRegistro(),
            Divider(),
            Expanded(child: usuario()),
            Divider(),
            Expanded(child: correo()),
            Divider(),
            Expanded(child: botonRegistro(context))
          ],
        ));
  }
}
