import 'package:flutter/material.dart';
import 'package:mercado_libre/view/inicio.dart';
 
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Inicio()
    );
  }
}