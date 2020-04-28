import 'package:mobile_wallet_app/data/user_data.dart';

class DigiSession{

  static final DigiSession _singleton = new DigiSession._internal();
  static Map<String,DigiUser> userList;
  static bool debugMode = true;
  DigiUser user;

  var activityList = [];

  factory DigiSession(){
    return _singleton;
  }

  DigiSession._internal(){
    userList = getStartingUsers();
    loadStartingData(userList);
  }

  logIn(user, password){
    if (!DigiSession.userList.containsKey(user)){
      return false;
    }
    DigiUser checkUser = DigiSession.userList[user];
    if (checkUser.password == password){
      this.user = checkUser;
      return true;
    }
    return false;
  }

  sendFunds(DigiUser user, String strRecipient, double dblAmount){
    DigiUser oRecipient;
    bool success = true;
    if(!DigiSession.userList.containsKey(strRecipient)){
      return false;
    }
    if(dblAmount > user.funds) return false;
    oRecipient = DigiSession.userList[strRecipient];
    user.funds -= dblAmount;
    oRecipient.funds += dblAmount;
    user.addActivity(oRecipient, dblAmount, true);
    oRecipient.addActivity(user, dblAmount, false);
    return true;
  }

  loadFunds(DigiPaymentMethod pm, double dblAmount){
    print("$pm.alias $dblAmount");
    user.funds += dblAmount;
    user.addBankActivity(pm, dblAmount);
  }

}
