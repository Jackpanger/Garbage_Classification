import 'package:flutter/material.dart';
import '../../../config/global_config.dart';
import '../Settings.dart';

class ThemeColorsPage extends StatefulWidget {
  ThemeColorsPage({Key key}) : super(key: key);

  _ThemeColorsPageState createState() => _ThemeColorsPageState();
}

class _ThemeColorsPageState extends State<ThemeColorsPage> {
  bool checkWhite = true;
  bool checkBlack = true;
  bool checkPink = true;
  bool checkYellow = true;
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
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Settings()));
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
                      if (checkWhite == true && GlobalConfig.dark == false) {
                        GlobalConfig.themeColorsCheckWhite = true;
                        GlobalConfig.themeColorsCheckBlack = false;
                        GlobalConfig.themeColorsCheckPink = false;
                        GlobalConfig.themeColorsCheckYellow = false;
                        GlobalConfig.themeColorsCheckBlue = false;
                        GlobalConfig.themeColorsCheckRed = false;
                        GlobalConfig.themeColorsCheckGreen = false;
                        GlobalConfig.themeColor = Colors.white;
                      }
                      else if(checkWhite == true && GlobalConfig.dark == true){
                        GlobalConfig.themeColorsCheckWhite = true;
                        GlobalConfig.themeColorsCheckBlack = false;
                        GlobalConfig.themeColorsCheckPink = false;
                        GlobalConfig.themeColorsCheckYellow = false;
                        GlobalConfig.themeColorsCheckBlue = false;
                        GlobalConfig.themeColorsCheckRed = false;
                        GlobalConfig.themeColorsCheckGreen = false;
                        GlobalConfig.themeColor = Colors.white;
                        GlobalConfig.themeData = new ThemeData(
                          primaryColor: Colors.white,
                          scaffoldBackgroundColor: new Color(0xFFEBEBEB),
                        );
                        GlobalConfig.barColor = Colors.grey;
                        GlobalConfig.searchBackgroundColor = new Color(0xFFEBEBEB);
                        GlobalConfig.cardBackgroundColor = Colors.white;
                        GlobalConfig.fontColor = Colors.black54;
                        GlobalConfig.rowColor = Colors.white;
                        GlobalConfig.arrowColor = Colors.black;
                        GlobalConfig.dark = false;
                        GlobalConfig.fourPic['pic1'] = "images/residual.png";
                        GlobalConfig.fourPic['pic2'] = "images/wet.png";
                        GlobalConfig.fourPic['pic3'] = "images/recyclable.png";
                        GlobalConfig.fourPic['pic4'] = "images/other.png";
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
                        child: new Text("White",
                          style: new TextStyle(
                            fontSize: GlobalConfig.fontSize,
                          ),
                        ),
                      ),
                      trailing: Visibility(
                        visible: GlobalConfig.themeColorsCheckWhite,
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
                      if (checkBlack == true && GlobalConfig.dark == false) {
                        GlobalConfig.themeColorsCheckWhite = false;
                        GlobalConfig.themeColorsCheckBlack = true;
                        GlobalConfig.themeColorsCheckPink = false;
                        GlobalConfig.themeColorsCheckYellow = false;
                        GlobalConfig.themeColorsCheckBlue = false;
                        GlobalConfig.themeColorsCheckRed = false;
                        GlobalConfig.themeColorsCheckGreen = false;
                        GlobalConfig.themeColor = new Color(0xFF222222);
                        GlobalConfig.themeData = new ThemeData.dark();
                        GlobalConfig.searchBackgroundColor = Colors.white10;
                        GlobalConfig.cardBackgroundColor = new Color(0xFF222222);
                        GlobalConfig.barColor = Colors.white;
                        GlobalConfig.fontColor = Colors.white30;
                        GlobalConfig.rowColor = Colors.black45;
                        GlobalConfig.arrowColor = Colors.white;
                        GlobalConfig.dark = true;
                        GlobalConfig.fourPic['pic1'] = "images/residual2.png";
                        GlobalConfig.fourPic['pic2'] = "images/wet2.png";
                        GlobalConfig.fourPic['pic3'] = "images/recyclable2.png";
                        GlobalConfig.fourPic['pic4'] = "images/other2.png";
                      }
                      else if(checkBlack == true && GlobalConfig.dark == true){
                        GlobalConfig.themeColorsCheckWhite = false;
                        GlobalConfig.themeColorsCheckBlack = true;
                        GlobalConfig.themeColorsCheckPink = false;
                        GlobalConfig.themeColorsCheckYellow = false;
                        GlobalConfig.themeColorsCheckBlue = false;
                        GlobalConfig.themeColorsCheckRed = false;
                        GlobalConfig.themeColorsCheckGreen = false;
                        GlobalConfig.themeColor = new Color(0xFF222222);
                      }
                    });
                  },
                  child: new Container(
                    child: new ListTile(
                      leading: new Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                      ),
                      title: new Container(
                        child: new Text("Black",
                          style: new TextStyle(
                            fontSize: GlobalConfig.fontSize,
                          ),
                        ),
                      ),
                      trailing: Visibility(
                        visible: GlobalConfig.themeColorsCheckBlack,
                        child: new Icon(
                          Icons.check,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 1.0),
              color: GlobalConfig.rowColor,
              child: new TextButton(
                  onPressed: () {
                    setState(() {
                      if (checkPink == true && GlobalConfig.dark == false) {
                        GlobalConfig.themeColorsCheckWhite = false;
                        GlobalConfig.themeColorsCheckBlack = false;
                        GlobalConfig.themeColorsCheckPink = true;
                        GlobalConfig.themeColorsCheckYellow = false;
                        GlobalConfig.themeColorsCheckBlue = false;
                        GlobalConfig.themeColorsCheckRed = false;
                        GlobalConfig.themeColorsCheckGreen = false;
                        GlobalConfig.themeColor = new Color(0xFFF06292);
                      }else if(checkPink == true && GlobalConfig.dark == true){
                        GlobalConfig.themeColorsCheckWhite = false;
                        GlobalConfig.themeColorsCheckBlack = false;
                        GlobalConfig.themeColorsCheckPink = true;
                        GlobalConfig.themeColorsCheckYellow = false;
                        GlobalConfig.themeColorsCheckBlue = false;
                        GlobalConfig.themeColorsCheckRed = false;
                        GlobalConfig.themeColorsCheckGreen = false;
                        GlobalConfig.themeColor = new Color(0xFFF06292);
                        GlobalConfig.themeData = new ThemeData(
                          primaryColor: Colors.white,
                          scaffoldBackgroundColor: new Color(0xFFEBEBEB),
                        );
                        GlobalConfig.barColor = Colors.grey;
                        GlobalConfig.searchBackgroundColor = new Color(0xFFEBEBEB);
                        GlobalConfig.cardBackgroundColor = Colors.white;
                        GlobalConfig.fontColor = Colors.black54;
                        GlobalConfig.rowColor = Colors.white;
                        GlobalConfig.arrowColor = Colors.black;
                        GlobalConfig.dark = false;
                        GlobalConfig.fourPic['pic1'] = "images/residual.png";
                        GlobalConfig.fourPic['pic2'] = "images/wet.png";
                        GlobalConfig.fourPic['pic3'] = "images/recyclable.png";
                        GlobalConfig.fourPic['pic4'] = "images/other.png";
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
                        child: new Text("Pink",
                          style: new TextStyle(
                            fontSize: GlobalConfig.fontSize,
                          ),
                        ),
                      ),
                      trailing: Visibility(
                        visible: GlobalConfig.themeColorsCheckPink,
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
                      if (checkYellow == true && GlobalConfig.dark == false) {
                        GlobalConfig.themeColorsCheckWhite = false;
                        GlobalConfig.themeColorsCheckBlack = false;
                        GlobalConfig.themeColorsCheckPink = false;
                        GlobalConfig.themeColorsCheckYellow = true;
                        GlobalConfig.themeColorsCheckBlue = false;
                        GlobalConfig.themeColorsCheckRed = false;
                        GlobalConfig.themeColorsCheckGreen = false;
                        GlobalConfig.themeColor = Colors.yellow;
                      }else if(checkYellow == true && GlobalConfig.dark == true){
                        GlobalConfig.themeColorsCheckWhite = false;
                        GlobalConfig.themeColorsCheckBlack = false;
                        GlobalConfig.themeColorsCheckPink = false;
                        GlobalConfig.themeColorsCheckYellow = true;
                        GlobalConfig.themeColorsCheckBlue = false;
                        GlobalConfig.themeColorsCheckRed = false;
                        GlobalConfig.themeColorsCheckGreen = false;
                        GlobalConfig.themeColor = Colors.yellow;
                        GlobalConfig.themeData = new ThemeData(
                          primaryColor: Colors.white,
                          scaffoldBackgroundColor: new Color(0xFFEBEBEB),
                        );
                        GlobalConfig.barColor = Colors.grey;
                        GlobalConfig.searchBackgroundColor = new Color(0xFFEBEBEB);
                        GlobalConfig.cardBackgroundColor = Colors.white;
                        GlobalConfig.fontColor = Colors.black54;
                        GlobalConfig.rowColor = Colors.white;
                        GlobalConfig.arrowColor = Colors.black;
                        GlobalConfig.dark = false;
                        GlobalConfig.fourPic['pic1'] = "images/residual.png";
                        GlobalConfig.fourPic['pic2'] = "images/wet.png";
                        GlobalConfig.fourPic['pic3'] = "images/recyclable.png";
                        GlobalConfig.fourPic['pic4'] = "images/other.png";
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
                        child: new Text("Yellow",
                          style: new TextStyle(
                            fontSize: GlobalConfig.fontSize,
                          ),
                        ),
                      ),
                      trailing: Visibility(
                        visible: GlobalConfig.themeColorsCheckYellow,
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
                      if (checkBlue == true && GlobalConfig.dark == false) {
                        GlobalConfig.themeColorsCheckWhite = false;
                        GlobalConfig.themeColorsCheckBlack = false;
                        GlobalConfig.themeColorsCheckPink = false;
                        GlobalConfig.themeColorsCheckYellow = false;
                        GlobalConfig.themeColorsCheckBlue = true;
                        GlobalConfig.themeColorsCheckRed = false;
                        GlobalConfig.themeColorsCheckGreen = false;
                        GlobalConfig.themeColor = Colors.blue;
                      }else if(checkBlue == true && GlobalConfig.dark == true){
                        GlobalConfig.themeColorsCheckWhite = false;
                        GlobalConfig.themeColorsCheckBlack = false;
                        GlobalConfig.themeColorsCheckPink = false;
                        GlobalConfig.themeColorsCheckYellow = false;
                        GlobalConfig.themeColorsCheckBlue = true;
                        GlobalConfig.themeColorsCheckRed = false;
                        GlobalConfig.themeColorsCheckGreen = false;
                        GlobalConfig.themeColor = Colors.blue;
                        GlobalConfig.themeData = new ThemeData(
                          primaryColor: Colors.white,
                          scaffoldBackgroundColor: new Color(0xFFEBEBEB),
                        );
                        GlobalConfig.barColor = Colors.grey;
                        GlobalConfig.searchBackgroundColor = new Color(0xFFEBEBEB);
                        GlobalConfig.cardBackgroundColor = Colors.white;
                        GlobalConfig.fontColor = Colors.black54;
                        GlobalConfig.rowColor = Colors.white;
                        GlobalConfig.arrowColor = Colors.black;
                        GlobalConfig.dark = false;
                        GlobalConfig.fourPic['pic1'] = "images/residual.png";
                        GlobalConfig.fourPic['pic2'] = "images/wet.png";
                        GlobalConfig.fourPic['pic3'] = "images/recyclable.png";
                        GlobalConfig.fourPic['pic4'] = "images/other.png";
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
                        child: new Text("Blue",
                          style: new TextStyle(
                            fontSize: GlobalConfig.fontSize,
                          ),
                        ),
                      ),
                      trailing: Visibility(
                        visible: GlobalConfig.themeColorsCheckBlue,
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
                      if (checkRed == true && GlobalConfig.dark == false) {
                        GlobalConfig.themeColorsCheckWhite = false;
                        GlobalConfig.themeColorsCheckBlack = false;
                        GlobalConfig.themeColorsCheckPink = false;
                        GlobalConfig.themeColorsCheckYellow = false;
                        GlobalConfig.themeColorsCheckBlue = false;
                        GlobalConfig.themeColorsCheckRed = true;
                        GlobalConfig.themeColorsCheckGreen = false;
                        GlobalConfig.themeColor = Colors.red;
                      }else if(checkRed == true && GlobalConfig.dark == true){
                        GlobalConfig.themeColorsCheckWhite = false;
                        GlobalConfig.themeColorsCheckBlack = false;
                        GlobalConfig.themeColorsCheckPink = false;
                        GlobalConfig.themeColorsCheckYellow = false;
                        GlobalConfig.themeColorsCheckBlue = false;
                        GlobalConfig.themeColorsCheckRed = true;
                        GlobalConfig.themeColorsCheckGreen = false;
                        GlobalConfig.themeColor = Colors.red;
                        GlobalConfig.themeData = new ThemeData(
                          primaryColor: Colors.white,
                          scaffoldBackgroundColor: new Color(0xFFEBEBEB),
                        );
                        GlobalConfig.barColor = Colors.grey;
                        GlobalConfig.searchBackgroundColor = new Color(0xFFEBEBEB);
                        GlobalConfig.cardBackgroundColor = Colors.white;
                        GlobalConfig.fontColor = Colors.black54;
                        GlobalConfig.rowColor = Colors.white;
                        GlobalConfig.arrowColor = Colors.black;
                        GlobalConfig.dark = false;
                        GlobalConfig.fourPic['pic1'] = "images/residual.png";
                        GlobalConfig.fourPic['pic2'] = "images/wet.png";
                        GlobalConfig.fourPic['pic3'] = "images/recyclable.png";
                        GlobalConfig.fourPic['pic4'] = "images/other.png";
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
                        child: new Text("Red",
                          style: new TextStyle(
                            fontSize: GlobalConfig.fontSize,
                          ),
                        ),
                      ),
                      trailing: Visibility(
                        visible: GlobalConfig.themeColorsCheckRed,
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
                      if (checkGreen == true && GlobalConfig.dark == false) {
                        GlobalConfig.themeColorsCheckWhite = false;
                        GlobalConfig.themeColorsCheckBlack = false;
                        GlobalConfig.themeColorsCheckPink = false;
                        GlobalConfig.themeColorsCheckYellow = false;
                        GlobalConfig.themeColorsCheckBlue = false;
                        GlobalConfig.themeColorsCheckRed = false;
                        GlobalConfig.themeColorsCheckGreen = true;
                        GlobalConfig.themeColor = Colors.green;
                      }else if(checkGreen == true && GlobalConfig.dark == true){
                        GlobalConfig.themeColorsCheckWhite = false;
                        GlobalConfig.themeColorsCheckBlack = false;
                        GlobalConfig.themeColorsCheckPink = false;
                        GlobalConfig.themeColorsCheckYellow = false;
                        GlobalConfig.themeColorsCheckBlue = false;
                        GlobalConfig.themeColorsCheckRed = true;
                        GlobalConfig.themeColorsCheckGreen = false;
                        GlobalConfig.themeColor = Colors.red;
                        GlobalConfig.themeData = new ThemeData(
                          primaryColor: Colors.white,
                          scaffoldBackgroundColor: new Color(0xFFEBEBEB),
                        );
                        GlobalConfig.barColor = Colors.grey;
                        GlobalConfig.searchBackgroundColor = new Color(0xFFEBEBEB);
                        GlobalConfig.cardBackgroundColor = Colors.white;
                        GlobalConfig.fontColor = Colors.black54;
                        GlobalConfig.rowColor = Colors.white;
                        GlobalConfig.arrowColor = Colors.black;
                        GlobalConfig.dark = false;
                        GlobalConfig.fourPic['pic1'] = "images/residual.png";
                        GlobalConfig.fourPic['pic2'] = "images/wet.png";
                        GlobalConfig.fourPic['pic3'] = "images/recyclable.png";
                        GlobalConfig.fourPic['pic4'] = "images/other.png";
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
                        child: new Text("Green",
                          style: new TextStyle(
                            fontSize: GlobalConfig.fontSize,
                          ),
                        ),
                      ),
                      trailing: Visibility(
                        visible: GlobalConfig.themeColorsCheckGreen,
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