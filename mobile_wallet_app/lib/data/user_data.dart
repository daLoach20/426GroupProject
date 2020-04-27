// import 'dart:collection';

class DigiUser{

  static var uuid = 0;
  var id;
  var name;
  var email;
  var password;
  var activityString;

  DigiUser(name, email, password){
    this.id = uuid++;
    this.name = name;
    this.email = email;
    this.password = password;
  }

  getId(){
    return id;
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

  print(u.getId());
  print(u4.getId());

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
