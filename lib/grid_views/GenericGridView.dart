import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// ----------------  GenericGridView Widget ----------------------------------

class GenericGridView extends StatelessWidget {

  // Takes basic elemental info to build the Grid
  final int elementCount; // corresponde a la longitud de la lista en el codigo cliente
  final int axisCount; // asi podemos setear las columnas desde el codigo cliente
  final Function elementBuilder; // pasando una funcion desacoplamos el tipo de widget
  // que construira el grid

  // --> mirar codigo de ejemplo de uso.

  // constructor
  const GenericGridView({super.key, required this.axisCount, required this.elementCount, required this.elementBuilder});

  // GridView.builder()
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: axisCount),
      itemCount: elementCount,
      itemBuilder: elementBuilder(),
    );
  }
}