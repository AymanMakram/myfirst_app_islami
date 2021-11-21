import 'package:flutter/material.dart';
import 'package:myfirst_app_islami/HomeScreen.dart';

import 'HomeScreen.dart';

void main() {
  runApp(MainApplication());
}

class MyThemeData {
  static final Color primarycolor = Color.fromARGB(255, 183, 147, 95);
}

class MainApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Islami',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        primaryColor: MyThemeData.primarycolor,
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 30,
            )),
      ),
      routes: {HomeScreen.routeName: (buildContext) => HomeScreen()},
      initialRoute: HomeScreen.routeName,
    );
  }
}
