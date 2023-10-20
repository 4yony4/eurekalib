import 'package:flutter/material.dart';

class BOMButtonStyleOne extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double fontSize;
  final Color textColor;

  BOMButtonStyleOne({
    required this.buttonText,
    required this.onPressed,
    this.fontSize = 20.0, // Tamaño de fuente predeterminado
    this.textColor = Colors.white, // Color de fuente predeterminado
  });


      Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.all(20.0), // Padding de 20 en todos los lados
        child: ClipOval(
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              primary: Colors.blue, // Color de fondo del botón
              padding: EdgeInsets.all(16.0), // Espaciado interno del botón
            ),
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: fontSize, // Tamaño de fuente personalizado
                color: textColor, // Color de fuente personalizado
              ),
            ),
          ),
        ),
      );
    }
  }





