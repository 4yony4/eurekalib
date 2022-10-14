import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JessView extends StatelessWidget{

  JessView({Key? key}) : super(key:key);



@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.cyan,
    body: Center(
      child: Image.network("https://wakyma.com/blog/wp-content/uploads/2016/10/Raza-Yorkshire-Terrier.jpg"),
    ),
  );
}

