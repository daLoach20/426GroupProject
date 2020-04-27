// import 'package:mobile_wallet_app/data/user_data.dart';
import 'package:mobile_wallet_app/data/current_session.dart';

class ActivityLoader{

  static final ActivityLoader _singleton = new ActivityLoader._internal();
  // Map<int,DigiUser> userList;
  DigiSession session;
  var activityList = [];

  factory ActivityLoader(){
    return _singleton;
  }

  ActivityLoader._internal(){
    this.session = new DigiSession();
    // this.userList = getStartingUsers();
    // loadStartingData(this.userList);
  }

  getActivity(){
    if (session.user != null){
      return session.user.activityString.toString().split("\n");
    }
    else return [",,"];
  }

}