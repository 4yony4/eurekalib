import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget{

  final String sImgURL;
  final String sName;
  final Function(int index) onShortClick;
  final int index;

  const RoomCard({Key? key, required this.sImgURL, required this.sName,
    required this.onShortClick, required this.index}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onShortClick(index);
      },
      child: Card(
        color: Colors.amber,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(sImgURL),
            Text(sName)
          ],
        ),

      ),
    );
  }
}