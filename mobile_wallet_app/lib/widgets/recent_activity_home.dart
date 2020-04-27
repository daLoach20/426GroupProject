import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/helpers/recent_activity_loader.dart';
import 'package:mobile_wallet_app/helpers/helper_functions.dart';

class _RecentActivityState extends State<RecentActivityHome>{

  ActivityLoader activityLoader = new ActivityLoader();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        // Container(
        //   padding: EdgeInsets.all(20),
        //   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        //   color: Colors.white,
        //   alignment: Alignment.center,
        //   // child: Text('Recent Activity'),
        //   // child: ListView(
        //   //   // children: <Widget>[
        //   //   //   for (var item in activityLoader.activityList) Text(item)
        //   //   // ],
        Expanded(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text("Recent Activity", 
                style: TextStyle(
                  fontSize: 28.0,
                  letterSpacing: 10.0,
                  fontWeight: FontWeight.bold,
                )),
              // for (var item in activityLoader.activityList) Text(item.toString().split(",")[0])
              Container(
                padding: EdgeInsets.all(5.0),
                child: Column(children: <Widget>[
                  for (var item in activityLoader.activityList) get_row_from_activity(item)
                ],)
              ),
              // for (var item in activityLoader.activityList) Text(foo().toString())
              ],
            ),)
      //   )
      ],
    );
  }
}

class RecentActivityHome extends StatefulWidget {

  @override
  _RecentActivityState createState() => _RecentActivityState();
  
}