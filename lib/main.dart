import 'package:flutter/material.dart';

import 'formularioLibro.dart';
import 'formularioCliente.dart';
import 'formularioCompra.dart';
import 'formularioReserva.dart';
import 'formularioAutor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String formu1 = Formu1.routeName;
  static const String formu2 = Formu2.routeName;
  static const String formu3 = Formu3.routeName;
  static const String formu4 = Formu4.routeName;
  static const String formu5 = Formu5.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        formu1: (context) => Formu1(),
        formu2: (context) => Formu2(),
        formu3: (context) => Formu3(),
        formu4: (context) => Formu4(),
        formu5: (context) => Formu5(),
      },
      home: Formu1(),
    );
  }
}
