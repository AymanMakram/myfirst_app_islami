import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
String verse ;
int index ;
VerseWidget(this.verse,this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(verse+'{${index+1}}',textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18),textDirection: TextDirection.rtl,),
    );
  }
}
