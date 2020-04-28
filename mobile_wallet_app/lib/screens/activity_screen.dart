// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
// import 'package:mobile_wallet_app/main.dart';
// import 'package:mobile_wallet_app/widgets/qr_code.dart';
// import 'package:mobile_wallet_app/widgets/recent_activity_home.dart';
import 'package:mobile_wallet_app/widgets/recent_activity_home.dart';
import 'package:mobile_wallet_app/widgets/nav_drawer.dart';
import 'package:mobile_wallet_app/widgets/bot_nav_bar.dart';
import 'package:mobile_wallet_app/widgets/top_nav_bar.dart';


class ActivityScreen extends StatelessWidget {
  static const String id = "ACTIVITY";
  final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
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
                    height: 20,
                  ),
                  RecentActivityHome(),
                  Container(
                    height: 20,
                  ),
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