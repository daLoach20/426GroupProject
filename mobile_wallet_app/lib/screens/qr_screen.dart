// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Done

import 'package:flutter/material.dart';
// import 'package:mobile_wallet_app/main.dart';
// import 'package:mobile_wallet_app/widgets/qr_code.dart';
// import 'package:mobile_wallet_app/widgets/recent_activity_home.dart';
import 'package:mobile_wallet_app/screens/send_funds_screen.dart';

class QRScreen extends StatelessWidget {
  static const String id = "QR";
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      // Navigator.of(context).popAndPushNamed(SendFundsScreen.id, arguments: "hamiltonde1@jacks.sfasu.edu");
      print('Delayed action');
      Navigator.of(context).pop();
      Navigator.push(
        context, new MaterialPageRoute(
          builder: (BuildContext context) => new SendFundsScreen(sendTo:"hamiltonde1@jacks.sfasu.edu")
          ));
    });
    return Container(
      // child: Text("QR Code")
      child: Material(
        elevation: 6.0,
        color: Colors.transparent,
        type: MaterialType.transparency,
        child: Ink.image(
          image: AssetImage("lib/assets/qr_pic.jpg"),
          fit: BoxFit.cover,
          child: InkWell(
            onTap: () {},
            splashColor: Colors.deepPurple,
            highlightColor: Colors.deepPurpleAccent,
          )
        )
      )
    );
  }
}