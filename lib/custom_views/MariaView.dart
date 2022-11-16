
import 'package:flutter/material.dart';

class MariaView extends StatelessWidget{

  const MariaView({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maria View'),
      ),
      //backgroundColor: Colors.orangeAccent,
      body: Center(
          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_njkcOMQ9Otm0AFpmrbQRVKsyGbcZXwq6jSQ2fTb0tw&s")
      ),
    );
  }

}