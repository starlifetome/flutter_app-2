import 'package:blogapp/extension/contextEx.dart';
import 'package:blogapp/language_page/language_page.dart';
import 'package:blogapp/provider/theme_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class setting_pageEx extends StatefulWidget {
  const setting_pageEx({super.key});
  @override
  State<setting_pageEx> createState() => _setting_pageExState();
}
class _setting_pageExState extends State<setting_pageEx> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr('setting')),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(

            title: Text(tr('dark mode')),
            leading: Icon(Icons.brightness_2_rounded),
            trailing: Consumer<ThemeProvider> (
              builder: (BuildContext context, ThemeProvider tp, child){
                return Switch(value: tp.themeMode == ThemeMode.dark, onChanged: (isvalue) {
                  if(isvalue){
                    tp.changeDarkTheme();
                  }else{
                    tp.changeLightTheme();
                  }
                });
              },
            ),
      ),
          ListTile(
            onTap: (){
              context.go(language_textEx());
            },
            title: Text(tr('language')),
            leading: Icon(Icons.language),
          )
        ],
      ),
    );
  }
}
