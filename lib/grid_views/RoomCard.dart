import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget{

  final String sImgURL;
  final String sName;

  const RoomCard({Key? key, required this.sImgURL, required this.sName}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(sImgURL),
          Text(sName)
        ],
      )
      
    );
  }
}