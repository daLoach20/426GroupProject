// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:mobile_wallet_app/screens/home_screen.dart';
// import 'package:mobile_wallet_app/main.dart';
// import 'package:mobile_wallet_app/widgets/qr_code.dart';
// import 'package:mobile_wallet_app/widgets/recent_activity_home.dart';
import 'package:mobile_wallet_app/widgets/bot_nav_bar.dart';
import 'package:mobile_wallet_app/widgets/nav_drawer.dart';
import 'package:mobile_wallet_app/data/current_session.dart';
import 'package:mobile_wallet_app/widgets/top_nav_bar.dart';
import 'package:mobile_wallet_app/data/user_data.dart';
// import 'package:mobile_wallet_app/widgets/top_nav_bar.dart';


class _LoadFundsState extends State<LoadFundsScreen> {

  DigiSession session = new DigiSession();
  final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();
  
  TextEditingController _controller;
  TextEditingController _amtController;
  bool enabledReceiver = true;
  final oCcy = new NumberFormat("#,##0.00", "en_US");

  _LoadFundsState(String sendTo){
    _controller = new TextEditingController(text: sendTo);
    if(sendTo != null){
      enabledReceiver = false;
    }
  }

  @override
  void initState() {
    if (_controller == null){
      _controller = new TextEditingController(text: "Who's getting luck?");
    }
    _amtController = new TextEditingController(text: "");
    super.initState();
  }

  getLoadFundsBox(DigiPaymentMethod pm){
    var amountInput = TextField(
      obscureText: false,
      keyboardType: TextInputType.number,
      controller: _amtController,
      textAlign: TextAlign.center,
      onSubmitted: (amt){
        if(double.parse(amt) > 0){
        session.loadFunds(pm, double.parse(amt));
        _amtController.text = "";
        // Navigator.of(context).popUntil((route) => false);
        Navigator.popUntil(context, ModalRoute.withName(HomeScreen.id));
        }
      },
      style: TextStyle(fontFamily: 'Monsterrat', fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "0.00",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    return amountInput;
  }

  getPaymentMethodWidgets(){
    var row = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Expanded(
            child: Column(
              children: [
                Text("Payment Methods", 
                style: TextStyle(
                  fontSize: 28.0,
                  letterSpacing: 5.0,
                  fontWeight: FontWeight.bold,
                )),
              Container(
                padding: EdgeInsets.all(5.0),
                child: Column(children: <Widget>[
                  // for (var item in activityLoader.getActivity()) get_row_from_activity(item)
                  ...session.user.paymentMethods.map((e) => Material(
                    child: Column(
                      children: <Widget>[
                        IconButton(
                          iconSize: 50.0,
                          color: Colors.deepPurple,
                          icon: Icon(Icons.next_week),
                          onPressed: (){
                            popUpLoadFunds(e);
                          },
                        ),
                        Text(e.alias, style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        )),
                        Divider(height: 3,)
                      ],
                    )
                    // child: Text(e.alias))
                  )),
                ],)
              ),
              // for (var item in activityLoader.activityList) Text(foo().toString())
              ],
            ),)
      //   )
      ],
    );
    return row;
  }

  void popUpLoadFunds(DigiPaymentMethod pm){
      showDialog(
        context: context,
        builder: (BuildContext context){
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
                    Text("${pm.alias}"),
                    getLoadFundsBox(pm),
                    // Text("was sent "),
                    // Text("\$${oCcy.format(double.parse(_amtController.text))}"),
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
  
  void failAlert(){
    showDialog(
        context: context,
        builder: (BuildContext context){
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
                    Text("Payment failed to send."),
                    Text("Please check payment details."),
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

  // processPayment(){
  //   String strRecipient = _controller.text;
  //   double dblAmount = double.parse(_amtController.text);
  //   if (session.sendFunds(session.user, strRecipient, dblAmount)){
  //     successAlert();
  //   }
  //   else{
  //     failAlert();
  //   }
  // }

  @override
  Widget build(BuildContext context) {

    final emailInput = TextField(
      enabled: enabledReceiver,
      obscureText: false,
      controller: _controller,
      style: TextStyle(fontFamily: 'Monsterrat', fontSize: 20.0),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0,15.0,20.0,15.0),
        hintText: "Email / Username:",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final amountInput = TextField(
      obscureText: false,
      keyboardType: TextInputType.number,
      controller: _amtController,
      style: TextStyle(fontFamily: 'Monsterrat', fontSize: 20.0),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "0.00",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    // final sendButton = Material(
    //   elevation: 5.0,
    //   borderRadius: BorderRadius.circular(30.0),
    //   color: Colors.deepPurple,
    //   child: MaterialButton(
    //     minWidth: MediaQuery.of(context).size.width,
    //     padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
    //     onPressed: () {
    //       processPayment();
    //     },
    //     child: Text("Send!",
    //         textAlign: TextAlign.center,
    //         style: TextStyle(fontFamily: 'Monsterrat', fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold)),
    //   ),
    // );

    // final registerButton = Material(
    //   elevation: 5.0,
    //   borderRadius: BorderRadius.circular(30.0),
    //   color: Colors.deepPurple,
    //   child: MaterialButton(
    //     minWidth: MediaQuery.of(context).size.width,
    //     padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
    //     onPressed: () {},
    //     child: Text("Register",
    //         textAlign: TextAlign.center,
    //         style: TextStyle(fontFamily: 'Monsterrat', fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold)),
    //   ),
    // );

    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      backgroundColor: Colors.deepPurple,
      // appBar: getTopBar(context),
      appBar: getTopBar(context, _scaffoldKey),
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
                    height: 100,
                  ),
                  // QRCodeReader(),
                  // RecentActivityHome()
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    child: Text('Sending To:',
                      style: TextStyle(
                        fontSize: 20.0,
                      )
                    ),
                  ),
                  getPaymentMethodWidgets(),
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

class LoadFundsScreen extends StatefulWidget {

  static const String id = "LoadFunds";
  final String sendTo;

  LoadFundsScreen({this.sendTo});

  @override
  _LoadFundsState createState() => _LoadFundsState(this.sendTo);
}

getBox(String sendTo){

}