import 'package:flutter/material.dart';

class MarceloView extends StatelessWidget {
  const MarceloView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marcelo Do Amaral View'),
      ),
      //backgroundColor: Colors.orangeAccent,
      body: Center(
          child: Image.network(
              "https://aulavirtual32.educa.madrid.org/ies.reyfernando.sanfernando/pluginfile.php/19410/user/icon/educamadrid/f1?rev=827621")),
    );
  }
}
