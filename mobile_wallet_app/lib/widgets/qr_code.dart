import 'package:flutter/material.dart';


// lol i don't know what I'm doing
class QRCodeReader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
          color: Colors.red,
          alignment: Alignment.center,
          child: Text('QRCode Reader'),
        )
      ],
    );
  }
}