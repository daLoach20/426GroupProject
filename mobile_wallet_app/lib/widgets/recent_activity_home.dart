import 'package:flutter/material.dart';

class RecentActivityHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text('Recent Activity'),
        )
      ],
    );
  }
}