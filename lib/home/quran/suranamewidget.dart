import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuraNameWidget extends StatelessWidget {
  String suraName;

  int index;

  SuraNameWidget(this.index, this.suraName);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          suraName,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
