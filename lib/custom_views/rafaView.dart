

import 'package:flutter/material.dart';

class RafaView extends StatelessWidget{



  const RafaView({Key? key}) : super(key:key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('rafa view'),
      ),
      //backgroundColor: Colors.orangeAccent,
      body: Center(
          child: Image.network("https://cdnb.20m.es/yaestaellistoquetodolosabe/files/2014/05/Por-qu%C3%A9-al-planeta-Tierra-tambi%C3%A9n-se-le-llama-%E2%80%98mundo%E2%80%99.jpg")
      ),
    );
  }

}