import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myfirst_app_islami/home/quran/verseWidget.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'SuraDetailsScreen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    if (ayat.isEmpty) {
      readSura(args.index);
    }
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
          title: Text(args.suraName,style: TextStyle(color: Colors.black,fontSize: 30,),),
        ),
        body: Container(
          child: ayat.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Container(
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(24)),
            margin: EdgeInsets.symmetric(horizontal: 24,vertical: 68),
            padding: EdgeInsets.all(8),
                child: ListView.separated(
                    itemBuilder: (buildContext, index) {
                      return VerseWidget(ayat[index],index);
                    },
                    itemCount: ayat.length,
            separatorBuilder: (buildcontext, index) {
                return Container(
                  height: 1,
                  color: Theme.of(context).primaryColor,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                );
            },
                  ),
              ),
        ),
      )
    ]);
  }

  void readSura(int index) async {
    String fileName = 'assets/files/${index + 1}.txt';
    String fileContent = await rootBundle.loadString(fileName);
    List<String> verses = fileContent.split('\n');
    ayat = verses;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String suraName;

  int index;

  SuraDetailsArgs(this.index, this.suraName);
}
