// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/screens/home_screen.dart';
import 'package:mobile_wallet_app/screens/registration_screen.dart';
import 'package:mobile_wallet_app/data/current_session.dart';
import 'package:mobile_wallet_app/data/user_data.dart';
// import 'package:mobile_wallet_app/main.dart';
// import 'package:mobile_wallet_app/widgets/qr_code.dart';
// import 'package:mobile_wallet_app/widgets/recent_activity_home.dart';

class _SignInState extends State<SignInScreen> {

  DigiSession session = new DigiSession();
  TextEditingController emailTextInput = new TextEditingController();
  TextEditingController passwordTextInput = new TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailTextInput.dispose();
    passwordTextInput.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    FocusNode emailNode = FocusNode();
    FocusNode passwordNode = FocusNode();

    final emailInput = TextField(
      controller: emailTextInput,
      focusNode: emailNode,
      obscureText: false,
      onEditingComplete: () {},
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
        style: TextStyle(fontFamily: 'Monsterrat', fontSize: 20.0),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            hintText: "Password:",
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    void loginFailed(){
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
                      Text("Login Failed"),
                      Text("Username or Password Incorrect"),
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

    void processLogin(){
      String email = emailTextInput.text;
      String password = passwordTextInput.text;
      // DigiSession.userList[email] = new DigiUser(name = "blah", email, password);
      if(session.logIn(email, password) == true){
        Navigator.of(context).pushNamed(HomeScreen.id);
        dispose();
      }
      else{
        loginFailed();
        dispose();
      }
    }

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.deepPurple,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          //FocusScope.of(context).unfocus();
          processLogin();

        },
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
                        "lib/assets/SFA-Logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 45.0),
                    emailInput,
                    SizedBox(height: 25.0),
                    passwordInput,
                    SizedBox(height: 60.0,),
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

class SignInScreen extends StatefulWidget {
  static const String id = "SIGNIN";

  _SignInState createState() => _SignInState();
}