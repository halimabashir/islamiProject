import 'package:flutter/material.dart';
import 'package:islami/main.dart';

class SebhaTab extends StatefulWidget {
  @override
  _SebhaTabState createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  List<String> tasbeh = [
    'الحمدلله',
    'سبحان الله',
    'الله أكبر',
    'لا حول ولا قوة إلا بالله'
  ];
  double angle = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * .2),
                  child: Image.asset('assets/images/head_of_seb7a.png')),
              InkWell(
                onTap: onSebhaPressed,
                child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .1),
                    child: Transform.rotate(
                        angle: angle,
                        child: Image.asset('assets/images/body_of_seb7a.png'))),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'عدد التسبيحات',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          Container(
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xffB7935F),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(15),
            child: Text(
              '$count',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: MyThemeData.primaryColor,
              borderRadius: BorderRadius.circular(25),
            ),
            padding: EdgeInsets.all(12),
            child: Text(
              '${tasbeh[index]}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  void onSebhaPressed() {
    count++;
    if (count % 33 == 0) {
      if (index == tasbeh.length - 1) {
        index = 0;
      }
      index++;
    }
    setState(() {
      angle += 20;
    });
  }
}
