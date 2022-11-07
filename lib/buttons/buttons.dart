import 'package:flutter/material.dart';


class btn1 extends StatelessWidget {
  btn1({Key? key}) : super(key: key);

  void btnPressed() {}

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).popAndPushNamed("/registerview");
      },
      style: TextButton.styleFrom(
        backgroundColor:Color.fromRGBO(210, 210, 210,20),
      ),
      child: Text(
          'Registrarse',
          style: TextStyle(fontSize: 14,color: Color.fromRGBO(135, 10, 1, 20),)
      ),
    );
  }
}

class btn3 extends StatelessWidget {
  btn3({Key? key}) : super(key: key);

  void btnPressed() {}

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).popAndPushNamed("/loginView");
      },
      style: TextButton.styleFrom(
        backgroundColor:Color.fromRGBO(210, 210, 210,20),
      ),
      child: Text(
          'Atras',
          style: TextStyle(fontSize: 14,color: Color.fromRGBO(135, 10, 1, 20),)
      ),
    );
  }
}



class btn4 extends StatelessWidget {
  btn4 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).popAndPushNamed("/loginView");
      },
      style: TextButton.styleFrom(
        backgroundColor:Color.fromRGBO(210, 210, 210,20),
      ),
      child: Text(
          'Click para volver al login',
          style: TextStyle(fontSize: 18,color: Color.fromRGBO(135, 10, 1, 20),)
      ),
    );
  }
}