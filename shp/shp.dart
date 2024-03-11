

import 'package:shared_preferences/shared_preferences.dart';

class sharePre{

  //set
  static Future<bool> setData({String? key, String? value})async{
    var shp = await SharedPreferences.getInstance();
    return shp.setString(key!,value!);



  }
  //get data String
  static Future<String?> getData({String? key})async{
    var shp = await SharedPreferences.getInstance();
    return shp.getString(key!);



  }


}