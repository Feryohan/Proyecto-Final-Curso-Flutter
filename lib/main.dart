import 'package:flutter/material.dart';
import 'package:rollers_unam/registro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rollers UNAM',
      home: Registro(),
    );
  }
}
