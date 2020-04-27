// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
// import 'package:mobile_wallet_app/main.dart';
// import 'package:mobile_wallet_app/widgets/qr_code.dart';
// import 'package:mobile_wallet_app/widgets/recent_activity_home.dart';

class SettingsScreen extends StatelessWidget {
  static const String id = "SETTINGS";
  final textController = TextEditingController();
  String userName = null;
  @override
  void dispose(){
    textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            //go to home screen
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(8.0),
              color: Colors.green,
              child: ListTile(
                title: Text(
                  userName = "Daivd Hamilton" ,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                leading: CircleAvatar(
                    child: Text("Dav", style: TextStyle(color: Colors.black)),
                    backgroundColor: Colors.white),
                trailing: Icon(Icons.edit, color: Colors.white),
               onTap: (){
                  //change user name/displayed name
               },
              ),
            ),
            const SizedBox(height: 10.0),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.lock_outline,
                      color: Colors.green,
                    ),
                    title: Text("Change Password"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      //open change password
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.green,
                    ),
                    title: Text("Change Email Address"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      //open change password
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.phone_android,
                      color: Colors.green,
                    ),
                    title: Text("Change Phone Number"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      //open change phone number
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

