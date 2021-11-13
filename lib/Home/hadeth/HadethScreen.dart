import 'package:flutter/material.dart';
import 'package:islami/Home/hadeth/HadethTab.dart';

class HadethScreen extends StatelessWidget {
  static const routeName = 'Hadeth_deatails';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Hadeth;
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
                child: Text(args.title,
                    style: TextStyle(color: Colors.black, fontSize: 30))),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(vertical: 44, horizontal: 24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.white),
            child: SingleChildScrollView(
              child: Text(
                args.content,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
