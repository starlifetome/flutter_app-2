import 'package:blogapp/pages/settings/settings_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:blogapp/extension/contextEx.dart';
class home_pageEx extends StatefulWidget {
  const home_pageEx({super.key});

  @override
  State<home_pageEx> createState() => _home_pageExState();
}
class _home_pageExState extends State<home_pageEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr('hello'),style: Theme.of(context).textTheme.headline5,),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            //context
            context.go(setting_pageEx());
          }, icon: Icon(Icons.settings))
        ],
      ),
      body: Center(child: Text('My Block App'),),
    );
  }
}
