#FloantingActioniButtonClass
Un botón de acción flotante de Material Design.
Un botón de acción flotante es un botón de icono circular que se desplaza sobre el contenido para promover una acción principal en la aplicación. Los botones de acción flotantes se usan más comúnmente en el campo

##Features
Los botones de acción flotantes deben usarse para acciones positivas como "crear", "compartir" o "navegar". (Si se usa más de un botón de acción flotante dentro de una ruta , asegúrese de que cada botón tenga un heroTag único ; de lo contrario, se generará una excepción).
https://youtu.be/2uaoEDOgk_I

##Getting started

Utilice como máximo un único botón de acción flotante por pantalla. 

Este ejemplo muestra cómo mostrar un FloatingActionButton en un Scaffold , con un color de fondo rosa y un icono de pulgar hacia arriba .

```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FabExample(),
    );
  }
}

class FabExample extends StatelessWidget {
  const FabExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButton Sample'),
      ),
      body: const Center(child: Text('Press the button below!')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
    );
  }
}

```
