import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../logica/operaciones.dart';

class PantallaEjercicios extends StatefulWidget {
  const PantallaEjercicios({super.key});

  @override
  State<PantallaEjercicios> createState() => _EstadoPantallaEjercicios();
}

class _EstadoPantallaEjercicios extends State<PantallaEjercicios> {
  final formulario = GlobalKey<FormState>();
  final controladorNumero = TextEditingController();
  String resultado = '';

  @override
  void dispose() {
    controladorNumero.dispose();
    super.dispose();
  }

  void calcular() {
    if (!formulario.currentState!.validate()) return;
    int numero = int.parse(controladorNumero.text);
    String primo = esPrimo(numero) ? 'Es primo.' : 'No es primo.';
    String factorial = calcularFactorial(numero);
    String capicua = esCapicua(numero) ? 'Es capicúa.' : 'No es capicúa.';

    setState(() {
      resultado =
          'Número $numero\n$primo\n\nFactorial:\n$factorial\n\n$capicua';
    });
    FocusScope.of(context).unfocus();
  }

  void limpiar() {
    controladorNumero.clear();
    formulario.currentState!.reset();
    setState(() => resultado = '');
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext contexto) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejercicios')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Form(
              key: formulario,
              child: TextFormField(
                controller: controladorNumero,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Ingrese un número entero',
                  helperText: 'Entre 0 y 10000.',
                  border: OutlineInputBorder(),
                  errorMaxLines: 2,
                ),
                inputFormatters: [
                  TextInputFormatter.withFunction((anterior, nuevo) {
                    return RegExp(r'^\d*$').hasMatch(nuevo.text)
                        ? nuevo
                        : anterior;
                  }),
                ],
                validator: (texto) {
                  int? numero = int.tryParse(texto ?? '');
                  if (numero == null || numero < 0 || numero > 10000) {
                    return 'Ingrese un entero entre 0 y 10000.';
                  }
                  return null;
                },
                onChanged: (_) => setState(() => resultado = ''),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: calcular, child: const Text('Calcular')),
            OutlinedButton(onPressed: limpiar, child: const Text('Limpiar')),
            TextButton(
              onPressed: () => Navigator.pop(contexto),
              child: const Text('Volver a bienvenida'),
            ),
            if (resultado.isNotEmpty) ...[
              const SizedBox(height: 20),
              Text(resultado),
            ],
          ],
        ),
      ),
    );
  }
}
