


import 'package:flutter/material.dart';

extension buildContext on BuildContext {

    Future<dynamic> go(Widget newWidget) async {
     Navigator.of(this).push(MaterialPageRoute(builder: (context){
       return newWidget;

     }));
   }

}