import 'package:flutter/material.dart';

import 'pantallas/pantalla_bienvenida.dart';
import 'pantallas/pantalla_ejercicios.dart';

void main() {
  runApp(const AplicacionMorillo());
}

class AplicacionMorillo extends StatelessWidget {
  const AplicacionMorillo({super.key});

  @override
  Widget build(BuildContext contexto) {
    return MaterialApp(
      title: 'Pr1 Morillo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (contexto) => const PantallaBienvenida(),
        '/ejercicios': (contexto) => const PantallaEjercicios(),
      },
    );
  }
}
