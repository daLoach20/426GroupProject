class ActivityLoader{

  static final ActivityLoader _singleton = new ActivityLoader._internal();
  var activityList = [];

  factory ActivityLoader(){
    return _singleton;
  }

  ActivityLoader._internal(){
    var activityString = "Burger King, 14.02, 20200415\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    activityString += "McDonals, 592.17, 20200416\n";
    this.activityList = activityString.split("\n");
  }

}