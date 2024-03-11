

import 'package:blogapp/shp/shp.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{

  ThemeMode themeMode = ThemeMode.light;
  //set
 checkThemeData() {
   sharePre.getData(key: 'theme').then((value) {
     if(value != null){
       themeMode = ThemeMode.light;
   }else{

       themeMode = ThemeMode.dark;
     }
   });
 }
 changeDarkTheme() {
   themeMode  = ThemeMode.dark;
   sharePre.setData(key: 'theme', value: 'dark');
   notifyListeners();
 }
   changeLightTheme() {
   themeMode = ThemeMode.light;
   sharePre.setData(key: 'theme', value: 'light');
   notifyListeners();
 }



  //get

}