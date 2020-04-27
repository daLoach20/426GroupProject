import 'package:flutter/material.dart';

foo(){
  return 'test';
}

get_row_from_activity(var activityString){
  var data = activityString.toString().split(",");
  var myRow;
  if(data.length == 3){
    myRow = Row(
      // crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        new Container(
          width: 200.0,
          alignment: Alignment.topLeft,
          child: new Text(data[0].toString(), 
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 18.0,
          )
          )
        ),
        new Container(
          width: 100.0,
          alignment: Alignment.topRight,
          child: new Text(data[1].toString(), 
          style: TextStyle(
            fontSize: 18.0,
          )
          )
        ),
        new Container(
          width: 100.0,
          alignment: Alignment.topRight,
          child: new Text(data[2].toString(), 
          style: TextStyle(
            fontSize: 18.0,
          )
          )
        ),
      ],
    );
  }
  else{
    myRow = Row();
  }
  return myRow;
}