// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
// import 'package:mobile_wallet_app/main.dart';
// import 'package:mobile_wallet_app/widgets/qr_code.dart';
// import 'package:mobile_wallet_app/widgets/recent_activity_home.dart';
import 'package:mobile_wallet_app/data/current_session.dart';

class _SendFundsState extends State<SendFundsScreen> {

  DigiSession session = new DigiSession();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Activity")
    );
  }
}

class SendFundsScreen extends StatefulWidget {

  static const String id = "SENDFUNDS";
  final String sendTo;

  SendFundsScreen({Key key, this.sendTo}) : super(key: key);

  @override
  _SendFundsState createState() => _SendFundsState();
}