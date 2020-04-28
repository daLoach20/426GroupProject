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
    return 
    GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(SignInScreen.id);
      },
      child: 
      Container(
        child: Text('Tap Anywhere', style: TextStyle(
          color: Colors.white,
        ))
      ),
    );
  }
}