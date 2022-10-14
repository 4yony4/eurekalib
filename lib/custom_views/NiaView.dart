import 'package:flutter/material.dart';

class NiaView extends StatelessWidget{

  NiaView ({Key?key}):super (key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.purple[50],
      /*appBar: AppBar(
        title: Text('LoginView'),
        backgroundColor: Colors.deepPurple,
      ),*/
      body:Center(
        child: Image.network("https://pbs.twimg.com/profile_images/602729491916435458/hSu0UjMC_400x400.jpg"),
      )
    );
  }

}
