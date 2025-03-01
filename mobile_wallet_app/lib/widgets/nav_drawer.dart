import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/screens/send_funds_screen.dart';
import 'package:mobile_wallet_app/screens/settings_screen.dart';
import 'package:mobile_wallet_app/screens/signin_screen.dart';
import 'package:mobile_wallet_app/screens/support_screen.dart';
import 'package:mobile_wallet_app/data/current_session.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            color: Colors.deepPurple,
            width: 50,
            height: 25,
          ),
          DrawerHeader(
            child: Text(
              '',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('lib/assets/dw.png'))),
          ),
          // ListTile(
          //   leading: Icon(Icons.input),
          //   title: Text('Welcome'),
          //   onTap: () => {},
          // ),
          // ListTile(
          //   leading: Icon(Icons.verified_user),
          //   title: Text('Profile'),
          //   onTap: () => {Navigator.of(context).pop()},
          // ),
          ListTile(
            leading: Icon(Icons.arrow_forward),
            title: Text('Send Funds'),
            onTap: () => {Navigator.of(context).popAndPushNamed(SendFundsScreen.id)},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).popAndPushNamed(SettingsScreen.id)},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {
              Navigator.of(context).popAndPushNamed(SupportScreen.id)
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {
              new DigiSession().user = null,
              // Navigator.pushReplacement(context, MaterialPageRoute(
              //   builder: context,
              //   settings: RouteSettings(
              //   name: SignInScreen.id))).then((value) => 
              // Navigator.popUntil(context, ModalRoute.withName(SignInScreen.id)),
              Navigator.of(context).popUntil((route) => route.isFirst),
              Navigator.of(context).pushReplacementNamed(SignInScreen.id)
            },
          ),
        ],
      ),
    );
  }
}