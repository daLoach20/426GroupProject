// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Done

import 'package:flutter/material.dart';
// import 'package:mobile_wallet_app/main.dart';
import 'package:mobile_wallet_app/widgets/qr_code.dart';
import 'package:intl/intl.dart';
import 'package:mobile_wallet_app/widgets/recent_activity_home.dart';
import 'package:mobile_wallet_app/widgets/nav_drawer.dart';
import 'package:mobile_wallet_app/widgets/bot_nav_bar.dart';
import 'package:mobile_wallet_app/widgets/top_nav_bar.dart';
import 'package:mobile_wallet_app/data/current_session.dart';

class _HomeScreenState extends State<HomeScreen> {

  DigiSession session = new DigiSession();
  // required for menu
  final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();
  final oCcy = new NumberFormat("#,##0.00", "en_US");
  
  @override
  Widget build(BuildContext context){
    // test code will have to remove later
    session.logIn("admin@admin.net", "password");
    // session.logIn("hamiltonde1@jacks.sfasu.edu", "12345");
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      // Required for menu
      key: _scaffoldKey,
      drawer: NavDrawer(),
      appBar: getTopBar(context, _scaffoldKey),
      // end menu stuff
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
              child: ListView(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text("Digi-Cash: \$${oCcy.format(session.user.funds)}",style: TextStyle(
                      fontSize: 40,
                    )),
                  ),
                  QRCodeReader(),
                  RecentActivityHome()
                ],
              )
            ),
          )],
      ),

      bottomNavigationBar: 
      getNavBar(context),
    );
  }
}
class HomeScreen extends StatefulWidget {

  static const String id = "HOME";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}