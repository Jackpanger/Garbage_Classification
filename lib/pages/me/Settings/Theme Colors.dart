import 'package:flutter/material.dart';
import '../../../config/global_config.dart';

class ThemeColorsPage extends StatefulWidget {
  ThemeColorsPage({Key key}) : super(key: key);

  _ThemeColorsPageState createState() => _ThemeColorsPageState();
}

class _ThemeColorsPageState extends State<ThemeColorsPage> {
  bool checkWhite = true;
  bool checkPink = true;
  bool checkBlack = true;
  bool checkBlue = true;
  bool checkRed = true;
  bool checkGreen = true;
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: AppBar(
          backgroundColor: GlobalConfig.themeColor,
          leading: new IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back, size: 25),
          ),
          title: Text("Theme Colors"),
          centerTitle: true,
        ),
        body: new Column(
          children: <Widget>[
            //1
            Container(
              margin: const EdgeInsets.only(bottom: 1.0),
              color: GlobalConfig.rowColor,
              child: new TextButton(
                  onPressed: () {
                    setState(() {
                      if (checkWhite == true) {
                        GlobalConfig.themeColorsChecka = true;
                        GlobalConfig.themeColorsCheckb = false;
                        GlobalConfig.themeColorsCheckc = false;
                        GlobalConfig.themeColorsCheckd = false;
                        GlobalConfig.themeColorsChecke = false;
                        GlobalConfig.themeColorsCheckf = false;
                        GlobalConfig.themeColor = Colors.white;
                        //GlobalConfig.dark = false;
                      }
                    });
                  },
                  child: new Container(
                    child: new ListTile(
                      leading: new Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: new Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                      ),
                      title: new Container(
                        child: new Text("White"),
                      ),
                      trailing: Visibility(
                        visible: GlobalConfig.themeColorsChecka,
                        child: new Icon(
                          Icons.check,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  )),
            ),
            //2
            Container(
              margin: const EdgeInsets.only(bottom: 1.0),
              color: GlobalConfig.rowColor,
              child: new TextButton(
                  onPressed: () {
                    setState(() {
                      if (checkPink == true) {
                        GlobalConfig.themeColorsChecka = false;
                        GlobalConfig.themeColorsCheckb = true;
                        GlobalConfig.themeColorsCheckc = false;
                        GlobalConfig.themeColorsCheckd = false;
                        GlobalConfig.themeColorsChecke = false;
                        GlobalConfig.themeColorsCheckf = false;
                        GlobalConfig.themeColor = new Color(0xFFF06292);
                      }
                    });
                  },
                  child: new Container(
                    child: new ListTile(
                      leading: new Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: new Color(0xFFF06292),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                      ),
                      title: new Container(
                        child: new Text("Pink"),
                      ),
                      trailing: Visibility(
                        visible: GlobalConfig.themeColorsCheckb,
                        child: new Icon(
                          Icons.check,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  )),
            ),
            //3
            Container(
              margin: const EdgeInsets.only(bottom: 1.0),
              color: GlobalConfig.rowColor,
              child: new TextButton(
                  onPressed: () {
                    setState(() {
                      if (checkBlack == true) {
                        GlobalConfig.themeColorsChecka = false;
                        GlobalConfig.themeColorsCheckb = false;
                        GlobalConfig.themeColorsCheckc = true;
                        GlobalConfig.themeColorsCheckd = false;
                        GlobalConfig.themeColorsChecke = false;
                        GlobalConfig.themeColorsCheckf = false;
                        GlobalConfig.themeColor = Colors.yellow;
                      }
                    });
                  },
                  child: new Container(
                    child: new ListTile(
                      leading: new Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                      ),
                      title: new Container(
                        child: new Text("Yellow"),
                      ),
                      trailing: Visibility(
                        visible: GlobalConfig.themeColorsCheckc,
                        child: new Icon(
                          Icons.check,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  )),
            ),
            //4
            Container(
              margin: const EdgeInsets.only(bottom: 1.0),
              color: GlobalConfig.rowColor,
              child: new TextButton(
                  onPressed: () {
                    setState(() {
                      if (checkBlue == true) {
                        GlobalConfig.themeColorsChecka = false;
                        GlobalConfig.themeColorsCheckb = false;
                        GlobalConfig.themeColorsCheckc = false;
                        GlobalConfig.themeColorsCheckd = true;
                        GlobalConfig.themeColorsChecke = false;
                        GlobalConfig.themeColorsCheckf = false;
                        GlobalConfig.themeColor = Colors.blue;
                      }
                    });
                  },
                  child: new Container(
                    child: new ListTile(
                      leading: new Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                      ),
                      title: new Container(
                        child: new Text("Blue (5 coins/mouth)"),
                      ),
                      trailing: Visibility(
                        visible: GlobalConfig.themeColorsCheckd,
                        child: new Icon(
                          Icons.check,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  )),
            ),
            //5
            Container(
              margin: const EdgeInsets.only(bottom: 1.0),
              color: GlobalConfig.rowColor,
              child: new TextButton(
                  onPressed: () {
                    setState(() {
                      if (checkRed == true) {
                        GlobalConfig.themeColorsChecka = false;
                        GlobalConfig.themeColorsCheckb = false;
                        GlobalConfig.themeColorsCheckc = false;
                        GlobalConfig.themeColorsCheckd = false;
                        GlobalConfig.themeColorsChecke = true;
                        GlobalConfig.themeColorsCheckf = false;
                        GlobalConfig.themeColor = Colors.red;
                      }
                    });
                  },
                  child: new Container(
                    child: new ListTile(
                      leading: new Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                      ),
                      title: new Container(
                        child: new Text("Red (5 coins/mouth)"),
                      ),
                      trailing: Visibility(
                        visible: GlobalConfig.themeColorsChecke,
                        child: new Icon(
                          Icons.check,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  )),
            ),
            //6
            Container(
              margin: const EdgeInsets.only(bottom: 1.0),
              color: GlobalConfig.rowColor,
              child: new TextButton(
                  onPressed: () {
                    setState(() {
                      if (checkGreen == true) {
                        GlobalConfig.themeColorsChecka = false;
                        GlobalConfig.themeColorsCheckb = false;
                        GlobalConfig.themeColorsCheckc = false;
                        GlobalConfig.themeColorsCheckd = false;
                        GlobalConfig.themeColorsChecke = false;
                        GlobalConfig.themeColorsCheckf = true;
                        GlobalConfig.themeColor = Colors.green;
                      }
                    });
                  },
                  child: new Container(
                    child: new ListTile(
                      leading: new Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                      ),
                      title: new Container(
                        child: new Text("Green (5 coins/mouth)"),
                      ),
                      trailing: Visibility(
                        visible: GlobalConfig.themeColorsCheckf,
                        child: new Icon(
                          Icons.check,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ));
  }
}