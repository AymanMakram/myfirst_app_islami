import 'package:flutter/material.dart';
import 'package:myfirst_app_islami/home/HomeScreen.dart';
import 'package:myfirst_app_islami/home/quran/SuraDetailsScreen.dart';

void main() {
  runApp(MainApplication());
}

class MyThemeData {
  static final Color primaryColor = Color.fromARGB(255, 183, 147, 95);
  static final Color darkPrimaryColor = Color.fromARGB(255, 20, 26, 46);
  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: MyThemeData.primaryColor,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 30,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black, unselectedItemColor: Colors.white));
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: MyThemeData.darkPrimaryColor,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 30,
        )),
  );
}

class MainApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Islami',
      theme: MyThemeData.lightTheme,
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        SuraDetailsScreen.routeName: (buildContext) => SuraDetailsScreen()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
