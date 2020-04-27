import 'package:flutter/material.dart';

import 'package:mobile_wallet_app/screens/registration_screen.dart';
import 'package:mobile_wallet_app/screens/load_funds_screen.dart';
import 'package:mobile_wallet_app/screens/activity_screen.dart';

getNavBar(context){
  return Container(
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
              onPressed: (){
                Navigator.of(context).pushNamed(RegistrationScreen.id);
              },
            ),
          ),
          middle: 
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: IconButton(
              icon: Icon(Icons.add_to_home_screen),
              iconSize: 40.0,
              color: Colors.white,
              onPressed: (){
                Navigator.of(context).pushNamed(LoadFundsScreen.id);
              },
            ),
          ),
          trailing: 
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            child: IconButton(
              icon: Icon(Icons.call_to_action),
              iconSize: 40.0,
              color: Colors.white,
              onPressed: (){
                Navigator.of(context).pushNamed(ActivityScreen.id);
              },
            ),
          ),
        ),
      );
}