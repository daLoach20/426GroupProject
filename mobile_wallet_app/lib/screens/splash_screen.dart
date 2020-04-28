// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:mobile_wallet_app/main.dart';
import 'package:mobile_wallet_app/screens/home_screen.dart';
import 'package:mobile_wallet_app/screens/signin_screen.dart';


//import 'package:mobile_wallet_app/screens/signin_screen.dart';
// import 'package:mobile_wallet_app/data/current_session.dart';
class SplashScreen extends StatefulWidget {
  static const String id = "LOADING";
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
        () => Navigator.of(context).pushNamed(SignInScreen.id));
  }

  // Navigator.of(context).pushNamed(SignInScreen.id);
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.deepPurpleAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 50.0,
                          child: Icon(
                            Icons.phone_android,
                            color: Colors.white,
                            size: 50.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        Text(
                          "DigiWallet",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0),
                        ),
                      ]),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      backgroundColor: Colors.black,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      "For all your money storing needs!",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );

  }
}
