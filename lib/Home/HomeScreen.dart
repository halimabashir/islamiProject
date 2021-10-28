import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/Home/Quran/QuranTab.dart';
import 'package:islami/Home/hadeth/HadethTab.dart';
import 'package:islami/Home/radio/RadioTab.dart';
import 'package:islami/Home/sebha/SebhaTab.dart';
import 'package:islami/main.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
            title: Center(
                child: Text('إسلامي',
                    style: TextStyle(color: Colors.black, fontSize: 30))),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: MyThemeData.primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                  label: 'قران'),
              BottomNavigationBarItem(
                  backgroundColor: MyThemeData.primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                  label: 'حديث'),
              BottomNavigationBarItem(
                  backgroundColor: MyThemeData.primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                  label: 'سبحة'),
              BottomNavigationBarItem(
                  backgroundColor: MyThemeData.primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                  label: 'راديو'),
            ],
          ),
          body: Container(
            child: views[currentIndex],
          ),
        ),
      ],
    );
  }

  List<Widget> views = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
  ];
}
