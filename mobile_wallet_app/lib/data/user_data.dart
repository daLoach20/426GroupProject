// import 'dart:collection';
import 'dart:core';

class DigiUser{

  static var uuid = 0;
  var id;
  var name;
  var email;
  var password;
  var activityString;
  double funds;

  DigiUser(name, email, password){
    this.id = uuid++;
    this.name = name;
    this.email = email;
    this.password = password;
    this.funds = 0;
    this.activityString = "";
  }

  getId(){
    return id;
  }

  addActivityString(String s){
    this.activityString += s;
  }

  addActivity(DigiUser user, double amt, bool sending){
    String s;
    String strDate;
    DateTime rn = DateTime.now();
    strDate = "${rn.year}${rn.month}${rn.day}";
    if(sending){
      s = "${user.email}, ${-1 * amt}, $strDate\n";
    } else s = "${user.email}, $amt, ${DateTime.now()}\n";
    addActivityString(s);
  }

}

// HashMap map = new HashMap();
// var userList = new Map();

getStartingUsers(){
  DigiUser u = new DigiUser("admin", "admin@admin.net", "password");
  DigiUser u2 = new DigiUser("David Hamilton", "hamiltonde1@jacks.sfasu.edu", "12345");
  DigiUser u3 = new DigiUser("admin2", "admin2@admin.net", "password");
  DigiUser u4 = new DigiUser("admin3", "admin3@admin.net", "password");

  final Map<String, DigiUser> userList = {
    "admin@admin.net": u,
    "hamiltonde1@jacks.sfasu.edu": u2,
    "admin2@admin.net": u3,
    "admin3@admin.net": u4
  };

  // print(u.getId());
  // print(u4.getId());

  u.funds = 3.50;
  u2.funds = 34788.12;

  return userList;

}

loadStartingData(Map<String,DigiUser> ul){
  var activityString = "Burger King, 14.02, 20200415\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  activityString += "McDonalds, 592.17, 20200416\n";
  var u = ul["admin@admin.net"];
  u.activityString = activityString;
}
