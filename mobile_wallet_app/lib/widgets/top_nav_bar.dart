import 'package:flutter/material.dart';

getTopBar(context){
  return AppBar(
        elevation: 0.0,
        title: Text('DigiWallet',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          )
          ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
            Scaffold.of(context).openDrawer();
          },
        ),
      );
}