// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
// import 'package:mobile_wallet_app/main.dart';
// import 'package:mobile_wallet_app/widgets/qr_code.dart';
// import 'package:mobile_wallet_app/widgets/recent_activity_home.dart';
import 'package:mobile_wallet_app/data/current_session.dart';
import 'package:mobile_wallet_app/data/user_data.dart';
import 'package:mobile_wallet_app/screens/signin_screen.dart';
import 'package:mobile_wallet_app/screens/splash_screen.dart';

class RegistrationState extends State<RegistrationScreen> {

  DigiSession session = new DigiSession();
  TextEditingController emailTextInput = new TextEditingController();
  TextEditingController passwordTextInput = new TextEditingController();
  TextEditingController confirmTextInput = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    final registerEmail = TextField(
      controller: emailTextInput,
      obscureText: false,
      style: TextStyle(fontFamily: 'Monsterrat', fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0,15.0,20.0,15.0),
          hintText: "Email / Username:",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final registerPassword = TextField(
      controller: passwordTextInput,
      obscureText: false,
      style: TextStyle(fontFamily: 'Monsterrat', fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0,15.0,20.0,15.0),
          hintText: "Password:",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final confirmPassword = TextField(
      controller: confirmTextInput,
      obscureText: false,
      style: TextStyle(fontFamily: 'Monsterrat', fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0,15.0,20.0,15.0),
          hintText: "Confirm Password:",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    //this method pops up a dialog box if the registration fails, usually if the passwords did not match
    void registerFailed(){
      showDialog(
          context: context,
          builder: (BuildContext context)
          {
            return AlertDialog(
              content: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                      height: 200,
                      width: 250,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 10,
                          ),
                          Text("Registration Failed"),
                          Text("Passwords Did Not Match - Please Try Again"),
                          Container(
                            height: 10,
                          ),
                        ],
                      )
                  )
                ],
              ),
            );
          }
      );
    }

    //if the registration was a success, display the message and return to the sign in screen
    void registerSuccess(){
      showDialog(
          context: context,
          builder: (BuildContext context)
          {
            return AlertDialog(
              content: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                      height: 200,
                      width: 250,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 10,
                          ),
                          Text("Registration Complete!"),
                          Text("Returning to Sign in..."),
                          Container(
                            height: 10,
                          ),
                        ],
                      )
                  )
                ],
              ),
            );
          }
      );
    }

    //get the inputs from each text box, check them and then register the user
    void registerUser(){
      String email = emailTextInput.text;
      String password = passwordTextInput.text;
      String confirmPassword = confirmTextInput.text;

      if(password == confirmPassword){
        DigiSession.userList[email] = new DigiUser("New User", email, password);
        registerSuccess();
        Future.delayed(const Duration(seconds: 2), () {
          Navigator.of(context).pushNamed(SplashScreen.id);
        });
      }
      else{
        registerFailed();
      }
    }

    final registerButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.deepPurple,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        //if this button gets pressed then register the user and move back to the login page
        onPressed: () {
          registerUser();

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
                      "lib/assets/SFA-Logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 45.0),
                  registerEmail,
                  SizedBox(height: 25.0),
                  registerPassword,
                  SizedBox(height: 25.0,),
                  confirmPassword,
                  SizedBox(height: 40.0,),
                  registerButton,
                  SizedBox(height: 5.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RegistrationScreen extends StatefulWidget {

  static const String id = "REGISTER";

  RegistrationState createState() => RegistrationState();
}