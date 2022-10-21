


import 'package:flutter/material.dart';

class YonyView extends StatelessWidget{



  const YonyView({Key? key}) : super(key:key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yony View'),
      ),
      //backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Image.network("https://0.academia-photos.com/39984894/20376146/40184842/s200_jonathan.bar-magen_numhauser.jpg")
      ),
    );
  }

}