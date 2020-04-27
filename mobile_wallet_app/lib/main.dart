// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/screens/home_screen.dart';
import 'package:mobile_wallet_app/screens/landing_screen.dart';
import 'package:mobile_wallet_app/screens/splash_screen.dart';
import 'package:mobile_wallet_app/screens/signin_screen.dart';
import 'package:mobile_wallet_app/screens/registration_screen.dart';
import 'package:mobile_wallet_app/screens/load_funds_screen.dart';
import 'package:mobile_wallet_app/screens/send_funds_screen.dart';
import 'package:mobile_wallet_app/screens/activity_screen.dart';
import 'package:mobile_wallet_app/screens/settings_screen.dart';
import 'package:mobile_wallet_app/screens/support_screen.dart';
import 'package:mobile_wallet_app/screens/qr_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DigiWallet',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        accentColor: Colors.deepPurpleAccent,
      ),
      // home: HomeScreen(),
      initialRoute: SupportScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        SplashScreen.id: (context) => SplashScreen(),
        LandingScreen.id: (context) => LandingScreen(),
        SignInScreen.id: (context) => SignInScreen(),
        SettingsScreen.id: (context) => SettingsScreen(),
        SupportScreen.id: (context) => SupportScreen(),
        QRScreen.id: (context) => QRScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoadFundsScreen.id: (context) => LoadFundsScreen(),
        ActivityScreen.id: (context) => ActivityScreen(),
        SendFundsScreen.id: (context) => SendFundsScreen()

      }
    );
  }
}
