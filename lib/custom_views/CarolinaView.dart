import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarolinaView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _CarolinaView();
  }
}

class _CarolinaView extends State<CarolinaView>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
        title: Text('Chatdar'),
    ),
    );
  }

}