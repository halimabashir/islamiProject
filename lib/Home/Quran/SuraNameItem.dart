import 'package:flutter/material.dart';
import 'package:islami/Home/Quran/SuraDetailsScreen.dart';

class SuraNameItem extends StatelessWidget {
  String SuraName;

  int SuraIndex;

  SuraNameItem(this.SuraName, this.SuraIndex);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: SuraDetailsArgs(SuraName, SuraIndex));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${SuraName}',
              style: TextStyle(
                fontSize: 23,
              )),
        ],
      ),
    );
  }
}
