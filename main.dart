import 'package:blogapp/pages/home_page/home_page.dart';
import 'package:blogapp/pages/login_page.dart';
import 'package:blogapp/pages/widget/connection_error.dart';
import 'package:blogapp/pages/widget/nofound_error.dart';
import 'package:blogapp/pages/widget/server_error.dart';
import 'package:blogapp/provider/theme_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
        EasyLocalization(
            supportedLocales: [Locale('en', 'US'), Locale('my', 'MM')],
            path: 'assets/langs', // <-- change the path of the translation files
            fallbackLocale: Locale('en', 'US'),
            child: MyApp()
        ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context){
      return ThemeProvider();
    },
    child: Consumer<ThemeProvider> (builder: (BuildContext context, ThemeProvider tp, Widget? child) {
      return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          home: login_page(),
          debugShowCheckedModeBanner: false,
        themeMode: tp.themeMode,
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.green,
          primaryColor: Colors.green,
          scaffoldBackgroundColor: Colors.grey.shade100,
            appBarTheme: AppBarTheme(
            backgroundColor: Colors.blueAccent.shade400
        ),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.pinkAccent)
              )
          ),

          textTheme: TextTheme(
            headline5: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
            headline6: TextStyle(
              fontSize: 17,
              color: Colors.black,
            )
          ),

        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
            primarySwatch: Colors.pink,
            primaryColor: Colors.pinkAccent,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.red)
          )
        ),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.red
          ),
            textTheme: TextTheme(
                headline5: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              headline6: TextStyle(
                fontSize: 16,
                color: Colors.white
              )
            )
      )
      );
    },

    ),
    );
  }
}

/*

 */
