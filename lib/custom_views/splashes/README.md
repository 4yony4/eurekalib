# Splashes

En esta carpeta se guardarán distintas vistas Splash.
Estas vistas se utilizarán como pantalla de bienvenida al usuario.

## Contenido

Estas son las distintas clases que hay:

### AOC_splash

```dart
AOC_splash.dart

class AOC_splash extends StatefulWidget {
  final Function redirection;
  final Color? backgroundColor;
  final Color? loadingCircleBackgroundColor;
  final Color loadingCircleFirstColor;
  final Color? loadingCircleSecondColor;
  final String imagePath;
  final double width;
  final double height;
  final int? primaryColorDuration;
  final int? secondaryColorDuration;
  final double? circleStrokeWidth;
  final bool? isAsset;

  const AOC_splash(
      {super.key,
        required this.redirection,
        this.backgroundColor,
        this.loadingCircleBackgroundColor,
        required this.loadingCircleFirstColor,
        this.loadingCircleSecondColor,
        required this.imagePath,
        required this.width,
        required this.height,
        this.primaryColorDuration = 600,
        this.secondaryColorDuration = 600,
        this.circleStrokeWidth = 4.0,
        this.isAsset = true});
}
```

## Preview

### AOC_splash

![Alt Text](https://firebasestorage.googleapis.com/v0/b/fluterchat-977e2.appspot.com/o/AOC_splash_gif.gif?alt=media&token=00205859-5266-4c23-9d35-2a6c49d45225)

## Usage

### AOC_splash

```dart
import 'package:eurekalib/custom_views/splashes/AOC_splash.dart';
Widget build(BuildContext context) {
  return AOC_splash(
      isAsset: false, //Opcional. Un booleano para confirmar si el path de la imagen es un asset 
                      // o una url de internet. Por defecto es true.
      
      redirection: () => redirection(context), //Obligatorio. Función de redirección 
      
      primaryColorDuration: 400, //Opcional. La duración en milisegundos del color primario 
                                 // en la animación de cambio de colores. 
                                 // Por defecto son 600 ms.
      
      secondaryColorDuration: 500, //Opcional. La duración en milisegundos del color secundario en 
                                   // la animación de cambio de colores. 
                                   // Por defecto son 600 ms.
      
      circleStrokeWidth: 12, //Opcional. El ancho de la linea del círculo de carga. 
                             // Por defecto es 4.0.
      
      backgroundColor: Color.fromRGBO(220, 220, 220, 0), //Opcional. El color de fondo de la vista. 
      
      loadingCircleBackgroundColor: Colors.blueGrey, //Opcional. El color de fondo del círculo de carga.
      
      loadingCircleFirstColor: Colors.yellow, //Obligatorio. El color principal del círculo de carga.
      
      loadingCircleSecondColor: Colors.purple, // Opcional. El color al que se cambia el círculo.
                                               // Al dejarlo vacío el circulo no cambia de color. 
      
      width: 170, //Obligatorio. El ancho de la imagen y el círculo de carga.
      
      height: 170, //Obligatorio. El alto de la imagen y el círculo de carga.
      
      imagePath: //Obligatorio. La ruta de la imagen.
      "https://media.istockphoto.com/id/1209654046/vector/user-avatar-profile-icon-black-vector"
          "-illustration.jpg?s=612x612&w=0&k=20&c=EOYXACjtZmZQ5IsZ0UUp1iNmZ9q2xl1BD1VvN6tZ2UI=");
}
 
```
