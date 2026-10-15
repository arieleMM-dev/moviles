import 'package:flutter/material.dart';

class PantallaBienvenida extends StatelessWidget {
  const PantallaBienvenida({super.key});

  @override
  Widget build(BuildContext contexto) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pr1 Morillo')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                '¡Bienvenido!\nCalcula si un número es primo, su factorial y si es capicúa.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(contexto, '/ejercicios'),
                child: const Text('Ir a los ejercicios'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
