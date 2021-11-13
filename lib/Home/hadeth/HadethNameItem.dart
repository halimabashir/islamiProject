import 'package:flutter/material.dart';
import 'package:islami/Home/Quran/SuraDetailsScreen.dart';
import 'package:islami/Home/hadeth/HadethScreen.dart';
import 'package:islami/Home/hadeth/HadethTab.dart';

class HadethNameItem extends StatelessWidget {
  Hadeth hadeth;

  HadethNameItem(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethScreen.routeName, arguments: hadeth);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(hadeth.title,
                style: TextStyle(
                  fontSize: 24,
                )),
          ),
        ],
      ),
    );
  }
}
