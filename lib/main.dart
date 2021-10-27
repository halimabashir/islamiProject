import 'package:flutter/material.dart';
import 'package:islami/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'islami',
      routes: {
        HomeScreen.routeName: (buildcontext) => HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
