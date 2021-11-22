import 'package:flutter/material.dart';
import 'package:myfirst_app_islami/home/hades/hadesTab.dart';
import 'package:myfirst_app_islami/home/quran/quranTab.dart';
import 'package:myfirst_app_islami/home/radio/radioTab.dart';
import 'package:myfirst_app_islami/home/sebha/sebhaTab.dart';
import 'package:myfirst_app_islami/main.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/main_background.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Scaffold(
        appBar: AppBar(
          title: Center(child: Text('إسلامي')),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentindex,
            onTap: (index) {
              currentindex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                backgroundColor: MyThemeData.primaryColor,
                icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
                label: 'القرآن',
              ),
              BottomNavigationBarItem(
                backgroundColor: MyThemeData.primaryColor,
                icon: ImageIcon(AssetImage('assets/images/ic_hades.png')),
                label: 'الحديث',
              ),
              BottomNavigationBarItem(
                backgroundColor: MyThemeData.primaryColor,
                icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                label: 'السبحة',
              ),
              BottomNavigationBarItem(
                backgroundColor: MyThemeData.primaryColor,
                icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                label: 'الراديو',
              ),
            ]),
        body: Container(
          child: views[currentindex],
        ),
      ),
    ]);
  }

  List<Widget> views = [
    QuranTab(),
    HadesTab(),
    SebhaTab(),
    RadioTab(),
  ];
}
