import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Home/hadeth/HadethNameItem.dart';

import '../../main.dart';

class HadethTab extends StatefulWidget {
  @override
  _HadethTabState createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) loadHadethFile();
    return Column(
      children: [
        Expanded(flex: 1, child: Image.asset('assets/images/Hadeth_logo.png')),
        Divider(
          color: MyThemeData.primaryColor,
          thickness: 1,
        ),
        Text(
          'الأحاديث',
          style: TextStyle(
            fontSize: 23,
          ),
        ),
        Divider(thickness: 1, color: MyThemeData.primaryColor),
        Expanded(
          flex: 3,
          child: Container(
              child: allHadeth.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemBuilder: (buildcontext, index) {
                        return HadethNameItem(allHadeth[index]);
                      },
                      itemCount: allHadeth.length,
                    )),
        )
      ],
    );
  }

  List<Hadeth> allHadeth = [];

  void loadHadethFile() async {
    for (int i = 1; i <= 50; i++) {
      String fileContent =
          await rootBundle.loadString('assets/files/hadeth/h$i.txt');
      List<String> lines = fileContent.split('\n');
      String title = lines[0];
      String content = '';
      for (int j = 1; j < lines.length; j++) {
        content += lines[j];
      }
      var h = Hadeth(title, content);
      allHadeth.add(h);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;

  String content;

  Hadeth(this.title, this.content);
}
