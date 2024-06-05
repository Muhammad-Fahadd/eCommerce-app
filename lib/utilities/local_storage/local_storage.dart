// import 'package:shared_preferences/shared_preferences.dart';
//
// class ELocalStorage{
//
//  void saveDataLocally(String key , String value)async{
//    SharedPreferences localStorage = await SharedPreferences.getInstance();
//    localStorage.setString(key, value);
//  }
//
//  void getDataLocally(String key)async{
//    SharedPreferences localStorage = await SharedPreferences.getInstance();
//    localStorage.get(key);
//  }
//
//  void removeDataLocally(String key)async{
//    SharedPreferences localStorage = await SharedPreferences.getInstance();
//    localStorage.remove(key);
//  }
//
//  void clearAllDataLocally(String key)async{
//    SharedPreferences localStorage = await SharedPreferences.getInstance();
//    localStorage.clear();
//  }
//
// }