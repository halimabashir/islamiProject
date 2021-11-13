import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura deatils';

  @override
  _SuraDetailsScreenState createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    loadSuraDetails(args.SuraIndex);
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
                child: Text('${args.SuraName}',
                    style: TextStyle(color: Colors.black, fontSize: 30))),
          ),
          body: Container(
              margin: EdgeInsets.symmetric(vertical: 44, horizontal: 24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: verses.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: verses.length,
                      itemBuilder: (buildContext, index) {
                        return Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              verses[index],
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      })),
        ),
      ],
    );
  }

  void loadSuraDetails(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> ayat = fileContent.split('\n');
    this.verses = ayat;
    setState(() {});
  }
}

class SuraDetailsArgs {
  String SuraName;

  int SuraIndex;

  SuraDetailsArgs(this.SuraName, this.SuraIndex);
}
