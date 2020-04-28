// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
// import 'package:mobile_wallet_app/main.dart';
// import 'package:mobile_wallet_app/widgets/qr_code.dart';
// import 'package:mobile_wallet_app/widgets/recent_activity_home.dart';

class SupportScreen extends StatelessWidget {
  static const String id = "SUPPORT";
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Support Page'),
          backgroundColor: Colors.green,
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: Column(
                children: [
                  Image.asset('lib/assets/digiArt.png', width: 80, height: 80),
                  SizedBox(height: 20),
                  Text(
                    'Feel free to contact us at one of our contacts: Phone: 111-222-3333, Email: DigiWallet@bus.gov',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Remember:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    "DigiWallet Loves you",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Digital Links',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    Column(children: [
                      IconButton(
                        icon: Icon(Icons.star),
                        iconSize: 40,

                        color: Colors.orange,
                      ),
                      Text('Rate Us')
                    ]),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.share),
                          iconSize: 40,
                          color: Colors.green,
                        ),
                        Text('GitHub')
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.feedback),
                          iconSize: 40,
                          onPressed: () async {

                          },
                          color: Colors.blue,
                        ),
                        Text('Comments')
                      ],
                    )
                  ]),
                  SizedBox(
                    height: 10.0,
                  ),
                  Divider(),
                  SizedBox(height: 10.0),
                  Text(
                    'Remember DigiWallet is a totally nonprofit orginization that definetly doesnt sell your data out to anyone. Anybody that tells you otherwise is a liar.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13.0, color: Colors.grey),
                  ),
                  GestureDetector(
                      child: Text(
                        'https://github.com/thisis/a/fake/link.app.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13.0, color: Colors.green),
                      ),
                      onTap: () async {

                      }),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Just as a reminder this is totally not a simulation',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13.0, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Digiwallet v. 1.0',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )));
  }
}