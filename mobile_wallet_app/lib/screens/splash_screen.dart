// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
// import 'package:mobile_wallet_app/main.dart';
import 'package:mobile_wallet_app/screens/home_screen.dart';
import 'package:mobile_wallet_app/screens/signin_screen.dart';
// import 'package:mobile_wallet_app/data/current_session.dart';

class SplashScreen extends StatelessWidget {

  static const String id = "LOADING";

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamed(SignInScreen.id);
    });

      return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: SingleChildScrollView(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 155.0,
                    child: Image.asset(
                      "lib/assets/dw.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 45.0,
                    child: Text('Mobile Wallet', style: TextStyle(
                        fontFamily: 'Monsterrat', fontSize: 40.0, color: Colors.deepPurple, fontWeight: FontWeight.bold)
                      ),
                    ),
                  SizedBox(height: 25.0,
                    child: Text('Loading...', style: TextStyle(
                      fontFamily: 'Monsterrat', fontSize: 20.0, color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold)
                      ),
                   ),
                  SizedBox(height: 140.0,),
                  SizedBox(height: 30.0,
                      child: Text('Gathering Resources...', style: TextStyle(
                        fontFamily: 'Monsterrat', fontSize: 20.0, color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold)
                      ),
                    ),
                  SizedBox(height: 5.0),
                ],
              )
          ),
        ),
      ),
      ),
    );

  }
}