// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/screens/registration_screen.dart';
// import 'package:mobile_wallet_app/main.dart';
// import 'package:mobile_wallet_app/widgets/qr_code.dart';
// import 'package:mobile_wallet_app/widgets/recent_activity_home.dart';

class SignInScreen extends StatelessWidget {
  static const String id = "SIGNIN";

  @override
  Widget build(BuildContext context) {

    TextEditingController emailTextInput = new TextEditingController();
    TextEditingController passwordTextInput = new TextEditingController();
    FocusNode emailNode = FocusNode();
    FocusNode passwordNode = FocusNode();

    final emailInput = TextField(
      controller: emailTextInput,
      focusNode: emailNode,
      obscureText: false,
      onEditingComplete: () {},
      onChanged: (text) {
        FocusScope.of(context).requestFocus(emailNode);
      },
      style: TextStyle(fontFamily: 'Monsterrat', fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0,15.0,20.0,15.0),
          hintText: "Email / Username:",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordInput = TextField(
        controller: passwordTextInput,
        obscureText: true,
        focusNode: passwordNode,
        onEditingComplete: () {},
        onChanged: (text) {
          FocusScope.of(context).requestFocus(passwordNode);
        },
        style: TextStyle(fontFamily: 'Monsterrat', fontSize: 20.0),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Password:",
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.deepPurple,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Login",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'Monsterrat', fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.deepPurple,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.of(context).pushNamed(RegistrationScreen.id);
        },
        child: Text("Register",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'Monsterrat', fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
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
                        "gitignore might be blocking pngs - skip until fixed - assets/SFA-Logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 45.0),
                    emailInput,
                    SizedBox(height: 25.0),
                    passwordInput,
                    SizedBox(height: 40.0,),
                    loginButton,
                    SizedBox(height: 25.0,),
                    registerButton,
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