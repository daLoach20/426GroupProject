// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
// import 'package:mobile_wallet_app/main.dart';
import 'package:mobile_wallet_app/widgets/qr_code.dart';
import 'package:mobile_wallet_app/widgets/recent_activity_home.dart';

class _LandingScreenState extends State<LandingScreen> {
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        elevation: 0.0,
        title: Text('DigiWallet',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          )
          ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){},
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
              ),
              child: Column(
                children: <Widget>[
                  QRCodeReader(),
                  RecentActivityHome()
                ],
              )
            ),
          )],
      ),
    );
  }
}
class LandingScreen extends StatefulWidget {

  static const String id = "LANDING";

  @override
  _LandingScreenState createState() => _LandingScreenState();
}