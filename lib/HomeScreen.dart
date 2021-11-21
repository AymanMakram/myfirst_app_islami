import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image(
        image: AssetImage('assets/images/main_background.png'),
        fit: BoxFit.cover,
        width: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text('إسلامي'),
        ),
      ),
    ]);
  }
}

