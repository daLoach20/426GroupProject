// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/widgets/qr_code.dart';
import 'package:mobile_wallet_app/widgets/recent_activity_home.dart';

class _HomeScreenState extends State<HomeScreen> {
  
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

      bottomNavigationBar: 
      Container(
        height: 55,
        color: Colors.deepPurple,
        child: NavigationToolbar(
          leading: 
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            child: IconButton(
              icon: Icon(Icons.account_balance),
              iconSize: 40.0,
              color: Colors.white,
              onPressed: (){},
            ),
          ),
          middle: 
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: IconButton(
              icon: Icon(Icons.add_to_home_screen),
              iconSize: 40.0,
              color: Colors.white,
              onPressed: (){},
            ),
          ),
          trailing: 
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            child: IconButton(
              icon: Icon(Icons.call_to_action),
              iconSize: 40.0,
              color: Colors.white,
              onPressed: (){},
            ),
          ),
        ),
      ),
    );
  }
}
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}