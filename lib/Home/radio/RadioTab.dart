import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/main.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  _RadioTabState createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
              child: Image.asset('assets/images/radio_logo.png')),
          SizedBox(
            height: 8,
          ),
          Text(
            'إذاعة القران الكريم',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: null,
                  icon: Icon(
                    Icons.skip_previous,
                    color: MyThemeData.primaryColor,
                    size: 18,
                  ),
                  label: Text('')),
              ElevatedButton.icon(
                  onPressed: null,
                  icon: Icon(
                    Icons.play_arrow,
                    color: MyThemeData.primaryColor,
                    size: 25,
                  ),
                  label: Text('')),
              ElevatedButton.icon(
                  onPressed: null,
                  icon: Icon(
                    Icons.skip_next,
                    color: MyThemeData.primaryColor,
                    size: 18,
                  ),
                  label: Text('')),
            ],
          )
        ],
      ),
    );
  }
}