import 'package:flutter/material.dart';
import 'package:garbage_classification/pages/me/user/profile/profile.dart';
import 'package:garbage_classification/pages/tabs/Tabs.dart';
import 'package:garbage_classification/services/UserServices.dart';
import '../../config/global_config.dart';
import 'Settings.dart';
import '../../services/Storage.dart';

class Me extends StatefulWidget {
  Me({
    Key key,
  }) : super(key: key);

  @override
  _MeState createState({Key key}) => _MeState();
}

class _MeState extends State<Me> {
  bool isLogin = false;
  List userInfo = [];

  @override
  void initState() {
    super.initState();
    this._getUserInfo();
  }

  _getUserInfo() async {
    var isLogin = await UserServices.getUserLoginState();
    var userInfo = await UserServices.getUserInfo();
    setState(() {
      this.userInfo = userInfo;
      this.isLogin = isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
          body: new SingleChildScrollView(
        child: new Container(
          child: new Column(
            children: <Widget>[
              myInfoCard(),
              settingCard(),
            ],
          ),
        ),
      )),
    );
  }

  Widget myInfoCard() {
    return new Container(
      color: GlobalConfig.cardBackgroundColor,
      margin: const EdgeInsets.only(top: 10.0, bottom: 6.0),
      padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
      child: new Column(
        children: <Widget>[
          !this.isLogin
              ? new Container(
                  margin: const EdgeInsets.only(
                      top: 30.0, left: 16.0, right: 16.0, bottom: 16.0),
                  decoration: new BoxDecoration(
                      color: GlobalConfig.dark == true
                          ? Colors.white10
                          : new Color(0xFFF5F5F5),
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(6.0))),
                  child: new TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: new Container(
                        child: new ListTile(
                          leading: new Container(
                            child: new CircleAvatar(
                                backgroundImage:
                                    AssetImage("images/proimage.jpg"),
                                radius: 20.0),
                          ),
                          title: new Container(
                            margin: const EdgeInsets.only(bottom: 2.0),
                            child: new Text("user",
                                style: new TextStyle(
                                    fontSize: GlobalConfig.fontSize)),
                          ),
                          subtitle: new Container(
                            margin: const EdgeInsets.only(top: 2.0),
                            child: new Text("Login",
                                style: new TextStyle(
                                    fontSize: GlobalConfig.fontSize - 2)),
                          ),
                        ),
                      )),
                )
              : new Container(
                  margin: const EdgeInsets.only(
                      top: 30.0, left: 16.0, right: 16.0, bottom: 16.0),
                  decoration: new BoxDecoration(
                      color: GlobalConfig.dark == true
                          ? Colors.white10
                          : new Color(0xFFF5F5F5),
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(6.0))),
                  child: new TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(
                                builder: (context) => UserMessage()))
                            .then((value) => value ? _getUserInfo() : null);
                      },
                      child: new Container(
                        child: new ListTile(
                          leading: new Container(
                            child: new CircleAvatar(
                                backgroundImage:
                                    AssetImage("images/proimage.jpg"),
                                radius: 20.0),
                          ),
                          title: new Container(
                            margin: const EdgeInsets.only(bottom: 2.0),
                            child: new Text("${this.userInfo[0]['username']}"),
                          ),
                          subtitle: new Container(
                            margin: const EdgeInsets.only(top: 2.0),
                            child: new Text("${this.userInfo[0]['tel']}"),
                          ),
                        ),
                      )),
                ),
          new Container(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  width: (MediaQuery.of(context).size.width - 6.0) / 4,
                  child: new TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/mywork');
                      },
                      child: new Container(
                        height: 50.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              child: new Text(
                                "57",
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    color: GlobalConfig.fontColor),
                              ),
                            ),
                            new Container(
                              child: new Text(
                                "My work",
                                style: new TextStyle(
                                    fontSize: 12.0,
                                    color: GlobalConfig.fontColor),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                new Container(
                  height: 14.0,
                  width: 1.0,
                  decoration: new BoxDecoration(
                      border: new BorderDirectional(
                          start: new BorderSide(
                              color: GlobalConfig.dark == true
                                  ? Colors.white12
                                  : Colors.black12,
                              width: 1.0))),
                ),
                new Container(
                  width: (MediaQuery.of(context).size.width - 6.0) / 4,
                  child: new TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/subscribes');
                      },
                      child: new Container(
                        height: 50.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              child: new Text(
                                "210",
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    color: GlobalConfig.fontColor),
                              ),
                            ),
                            new Container(
                              child: new Text(
                                "subscribe",
                                style: new TextStyle(
                                    fontSize: 12.0,
                                    color: GlobalConfig.fontColor),
                              ),
                            )
                          ],
                        ),
                      )),
                ),
                new Container(
                  height: 14.0,
                  width: 1.0,
                  decoration: new BoxDecoration(
                      border: new BorderDirectional(
                          start: new BorderSide(
                              color: GlobalConfig.dark == true
                                  ? Colors.white12
                                  : Colors.black12,
                              width: 1.0))),
                ),
                new Container(
                  width: (MediaQuery.of(context).size.width - 6.0) / 4,
                  child: new TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/favorites');
                      },
                      child: new Container(
                        height: 50.0,
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              child: new Text(
                                "18",
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    color: GlobalConfig.fontColor),
                              ),
                            ),
                            new Container(
                              child: new Text(
                                "favorites",
                                style: new TextStyle(
                                    fontSize: 12.0,
                                    color: GlobalConfig.fontColor),
                              ),
                            )
                          ],
                        ),
                      )),
                ),
                new Container(
                  height: 14.0,
                  width: 1.0,
                  decoration: new BoxDecoration(
                      border: new BorderDirectional(
                          start: new BorderSide(
                              color: GlobalConfig.dark == true
                                  ? Colors.white12
                                  : Colors.black12,
                              width: 1.0))),
                ),
                new Container(
                    width: (MediaQuery.of(context).size.width - 6.0) / 4,
                    child: new TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/recent');
                        },
                        child: new Container(
                          height: 50.0,
                          child: new Column(
                            children: <Widget>[
                              new Container(
                                child: new Text(
                                  "33",
                                  style: new TextStyle(
                                      fontSize: 16.0,
                                      color: GlobalConfig.fontColor),
                                ),
                              ),
                              new Container(
                                child: new Text(
                                  "recent",
                                  style: new TextStyle(
                                      fontSize: 12.0,
                                      color: GlobalConfig.fontColor),
                                ),
                              )
                            ],
                          ),
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget settingCard() {
    return new Container(
      color: GlobalConfig.cardBackgroundColor,
      margin: const EdgeInsets.only(top: 6.0, bottom: 6.0),
      padding: const EdgeInsets.only(top: 12.0, bottom: 8.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 6.0),
            child: new TextButton(
              onPressed: () {
                setState(() {
                  if (GlobalConfig.dark == true) {
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
                  } else {
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
                  // Storage.setString('barColor', "hhh");
                  // Navigator.pushReplacement(context, new MaterialPageRoute(builder: (BuildContext context){
                  //   return Tabs(index: 2,);
                  // }
                  // )
                  // );
                });
              },
              child: new Container(
                child: new Row(
                  children: <Widget>[
                    new Container(
                      margin: const EdgeInsets.only(bottom: 6.0, right: 10.0),
                      child: new CircleAvatar(
                        radius: 20.0,
                        child: new Icon(
                            GlobalConfig.dark == true
                                ? Icons.wb_sunny
                                : Icons.brightness_2,
                            color: Colors.white),
                        backgroundColor: new Color(0xFFB86A0D),
                      ),
                    ),
                    new Container(
                      child: new Text(
                          GlobalConfig.dark == true ? "Day" : "Night",
                          style: new TextStyle(
                              color: GlobalConfig.fontColor,
                              fontSize: GlobalConfig.fontSize - 2)),
                    )
                  ],
                ),
              ),
            ),
          ),
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 6.0),
            child: new TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Settings()))
                      .then((value) => value ? _getUserInfo() : null);
                },
                child: new Container(
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(bottom: 6.0, right: 10.0),
                        child: new CircleAvatar(
                          radius: 20.0,
                          child: new Icon(Icons.perm_data_setting,
                              color: Colors.white),
                          backgroundColor: new Color(0xFF636269),
                        ),
                      ),
                      new Container(
                        child: new Text("Settings",
                            style: new TextStyle(
                                color: GlobalConfig.fontColor,
                                fontSize: GlobalConfig.fontSize - 2)),
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
