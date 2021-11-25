import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          title: Text(args.suraName),
        ),
        body: Container(
          child: ayat.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemBuilder: (buildContext, index) {
                    return Text(ayat[index]);
                  },
                  itemCount: ayat.length,
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
