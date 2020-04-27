import 'package:flutter/material.dart';
import 'package:mobile_wallet_app/screens/qr_screen.dart';
import 'package:mobile_wallet_app/widgets/qr_code.dart';


// lol i don't know what I'm doing
class QRCodeReader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
          // color: Colors.red,
          alignment: Alignment.center,
          // child: Text('QRCode Reader'),
          child: Column(children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: 
                Material(
                  elevation: 6.0,
                  color: Colors.transparent,
                  type: MaterialType.transparency,
                  child: Ink.image(
                    image: AssetImage("lib/assets/qr.png"),
                    fit: BoxFit.cover,
                    height: 150.0,
                    width: 150.0,
                    child: InkWell(
                    onTap: (){
                        Navigator.of(context).pushNamed(QRScreen.id);
                      },
                      splashColor: Colors.deepPurple,
                      highlightColor: Colors.deepPurpleAccent,
                    )
                ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                width: 250.0,
                margin: EdgeInsets.all(20.0),
                alignment: Alignment.center,
                child: Text("Scan Quick Response Code",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.white,
                ))
              )
            ],)
          )
      ],
    );
  }
}