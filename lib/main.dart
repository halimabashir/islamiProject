import 'package:flutter/material.dart';
import 'package:islami/Home/HomeScreen.dart';
import 'package:islami/Home/Quran/SuraDetailsScreen.dart';
import 'package:islami/Home/hadeth/HadethScreen.dart';

void main() {
  runApp(MyApp());
}

class MyThemeData {
  static final Color primaryColor = Color.fromARGB(255, 183, 147, 95);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'islami',
      theme: ThemeData(
          primaryColor: MyThemeData.primaryColor,
          indicatorColor: MyThemeData.primaryColor,
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
          )),
      routes: {
        HomeScreen.routeName: (buildcontext) => HomeScreen(),
        SuraDetailsScreen.routeName: (buildcontext) => SuraDetailsScreen(),
        HadethScreen.routeName: (buildcontext) => HadethScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

