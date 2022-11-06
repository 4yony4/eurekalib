# Splashes

En esta carpeta se guardarán distintas vistas Splash.
Estas vistas se utilizarán como pantalla de bienvenida al usuario.

## Contenido

Estas son las distintas clases que hay:

### AOC_splash

```dart
AOC_splash.dart
import 'package:flutter/material.dart';

class AOC_splash extends StatefulWidget {
  final Function redirection; //Obligatorio. Función de redirección 
  final Color? backgroundColor; //Opcional. El color de fondo de la vista. 
  final Color? loadingCircleBackgroundColor; //Opcional. El color de fondo del círculo de carga.
  final Color loadingCircleFirstColor;  //Obligatorio. El color principal del círculo de carga.
  final Color? loadingCircleSecondColor; // Opcional. El color al que se cambia el círculo. Al dejarlo vacío el circulo no cambia de color. 
  final String imagePath; //Obligatorio. La ruta de la imagen.
  final double width; //Obligatorio. El ancho de la imagen y el círculo de carga.
  final double height;  //Obligatorio. El alto de la imagen y el círculo de carga.
  final int? primaryColorDuration; //Opcional. La duración en milisegundos del color primario en la animación de cambio de colores. 
                                      // Por defecto son 600 ms.
                                      
  final int? secondaryColorDuration; //Opcional. La duración en milisegundos del color secundario en la animación de cambio de colores. 
                                      // Por defecto son 600 ms.
                                        
  final double? circleStrokeWidth; //Opcional. El ancho de la linea del círculo de carga. Por defecto es 4.0.
  final bool? isAsset; //Opcional. Un booleano para confirmar si el path de la imagen es un asset 
                      // o una url de internet. Por defecto es true.

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

  @override
  State<StatefulWidget> createState() {
    return _AOC_splash();
  }
}

class _AOC_splash extends State<AOC_splash> with TickerProviderStateMixin {
  late Animation<Color?>? _colorTween;
  late AnimationController _animationController;
  late Image image;

  @override
  void initState() {
  //El controlador de la animación para cambiar el color del círculo de carga.
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: widget.secondaryColorDuration!),
        reverseDuration: Duration(milliseconds: widget.primaryColorDuration!));
        
        //Los colores de la animación del círculo de carga.
    _colorTween = _animationController.drive(ColorTween(
        begin: widget.loadingCircleFirstColor,
        end: widget.loadingCircleSecondColor));
    _animationController.repeat(reverse: true); //Para que el circulo se repita y 
    
    //Recoger la imagen según sea de internet o un asset de la aplicación.
    image = widget.isAsset!
        ? Image.asset(widget.imagePath)
        : Image.network(widget.imagePath);
    super.initState();

//Esta función se usa para esperar la creación de la vista antes de realizar la redirección.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.redirection.call(); 
    });
  }

  @override
  void dispose() {
  //Destruir la animación cuando la vista se destruya.
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      body: Center(
        child: Stack( 
          alignment: Alignment.center,
          children: [
            Container(
              height: widget.height,
              width: widget.width,
              child: ClipOval( //Recortar la imagen en círculo
                child: image,
              ),
            ),
            Container(
              height: widget.height,
              width: widget.width,
              child: CircularProgressIndicator(
                strokeWidth: widget.circleStrokeWidth!,
                valueColor: widget.loadingCircleSecondColor != null //Usar la animación o según si ha color secundario o no.
                    ? _colorTween
                    : AlwaysStoppedAnimation(widget.loadingCircleFirstColor),
                backgroundColor: widget.loadingCircleBackgroundColor,
                semanticsLabel: 'Circular progress indicator',
              ),
            ),
          ],
        ),
      ),
    );
  }
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
      isAsset: false,
      redirection: () => redirection(context),
      primaryColorDuration: 400, 
      secondaryColorDuration: 500, 
      circleStrokeWidth: 12, 
      backgroundColor: Color.fromRGBO(220, 220, 220, 0), 
      loadingCircleBackgroundColor: Colors.blueGrey, 
      loadingCircleFirstColor: Colors.yellow,
      loadingCircleSecondColor: Colors.purple, 
      width: 170, 
      height: 170,
      imagePath: 
      "https://media.istockphoto.com/id/1209654046/vector/user-avatar-profile-icon-black-vector"
          "-illustration.jpg?s=612x612&w=0&k=20&c=EOYXACjtZmZQ5IsZ0UUp1iNmZ9q2xl1BD1VvN6tZ2UI=");
}
 
```
