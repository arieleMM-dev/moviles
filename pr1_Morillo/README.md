# pr1_Morillo

Aplicación básica de Flutter con pantalla de bienvenida, rutas, número primo, factorial con procedimiento, número capicúa y botón Limpiar.

## Ejecutar

Con un emulador Android iniciado o un teléfono conectado:

```powershell
cd "C:\Users\ariel\Desktop\UNI\Software\09-02 2627\Moviles\Prueba1\pr1_Morillo"
flutter pub get
flutter run -t lib/main.dart
```

Si el emulador está cerrado, iniciarlo con `flutter emulators --launch Flutter_API_36`.

## Archivos

- `lib/main.dart`: inicio y rutas `/` y `/ejercicios`.
- `lib/pantallas/pantalla_bienvenida.dart`: bienvenida y acceso.
- `lib/pantallas/pantalla_ejercicios.dart`: entrada, validación y resultados.
- `lib/logica/operaciones.dart`: cálculos.

El número se ingresa desde la pantalla; no hay datos precargados. Se aceptan enteros de 0 a 10000 para limitar el tamaño del factorial y su procedimiento. Para 0 se muestra 0! = 1; 0 y 1 no son primos. Los factoriales usan BigInt para evitar desbordamientos. Limpiar borra el campo, sus mensajes de validación y los resultados. Al editar el número también se oculta el resultado anterior.

El identificador interno es `pr1_morillo`, en minúsculas conforme a Flutter. La carpeta conserva el nombre solicitado `pr1_Morillo`.

No se crearon archivos de pruebas ni se ejecutaron tests.

## Los siete requisitos

1. Bienvenida con nombre, mensaje y botón de acceso.
2. Campo de entrada para un entero.
3. Determinación de número primo.
4. Factorial con multiplicación paso a paso.
5. Determinación de número capicúa.
6. Rutas entre bienvenida y ejercicios, con retorno.
7. Botón Limpiar para borrar entrada, errores y resultados.
