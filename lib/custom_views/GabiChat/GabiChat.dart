import 'package:flutter/material.dart';

class GabiText extends StatelessWidget {
  final String sTexto;
  final Function(int Index) onShortClick;
  final int index;

  GabiText(
      {Key? key,
        this.sTexto = "HOLA :)",
        required this.onShortClick,
        required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Container(
              child: Flexible(
                child: Text(
                  sTexto,
                  style: TextStyle(color: Colors.white),
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                ),
              ),
              padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              decoration: BoxDecoration(
                  color: Colors.green.shade300,
                  borderRadius: BorderRadius.circular(8.0)),
              margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            ),
          ], mainAxisAlignment: MainAxisAlignment.end),
        ],
      ),
    );
  }
}
