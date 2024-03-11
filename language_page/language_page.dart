
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
class language_textEx extends StatefulWidget {
  const language_textEx({super.key});

  @override
  State<language_textEx> createState() => _language_textExState();
}

class _language_textExState extends State<language_textEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Language'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: (){
              context.setLocale(Locale("en" , "US"));
            },
            title: Text('English'),
            trailing: EasyLocalization.of(context)?.locale == Locale("en","US")?Icon(Icons.check):Text('Select'),

          ),ListTile(
            onTap: (){
              context.setLocale(Locale("my" , "MM"));
            },
            title: Text('မြန်မာ'),
            trailing: EasyLocalization.of(context)?.locale == Locale("my","MM")?Icon(Icons.check):Text('Select'),
          ),
        ],
      ),
    );
  }
}
