import 'package:flutter/material.dart';

class AlexOView extends StatelessWidget {
  const AlexOView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alejandro Oliva View'),
      ),
      //backgroundColor: Colors.orangeAccent,
      body: Center(
          child: Image.network(
              "https://aulavirtual32.educa.madrid.org/ies.reyfernando.sanfernando/pluginfile.php/19410/user/icon/educamadrid/f1?rev=827621")),
    );
  }
}
