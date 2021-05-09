import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:garbage_classification/config/Config.dart';
import 'package:garbage_classification/pages/me/user/section/favorites.dart';
import 'dart:convert';
import '../../config/global_config.dart';
import 'res/form1.dart';
import 'res/form2.dart';
import 'res/form3.dart';
import 'res/form4.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<CategoryPage> {
  List _data1 = [];
  List _data2 = [];
  List _data3 = [];
  List _data4 = [];

  _getData1() async {
    var api = '${Config.home}data/category';
    var response1 = await Dio().post(api, data: {"kind": "residual waste"});
    setState(() {
      _data1 = response1.data["message"];
      // print(_data1.toString());
    });
  }

  _getData2() async {
    var api = '${Config.home}data/category';
    var response1 = await Dio().post(api, data: {"kind": "wet waste"});
    setState(() {
      _data2 = response1.data["message"];
      // print(_data1.toString());
    });
  }

  _getData3() async {
    var api = '${Config.home}data/category';
    var response1 = await Dio().post(api, data: {"kind": "recyclable waste"});
    setState(() {
      _data3 = response1.data["message"];
      // print(_data1.toString());
    });
  }

  _getData4() async {
    var api = '${Config.home}data/category';
    var response1 = await Dio().post(api, data: {"kind": "other waste"});
    setState(() {
      _data4 = response1.data["message"];
      // print(_data1.toString());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData1();
    _getData2();
    _getData3();
    _getData4();
  }

  void _favorites() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => favoritesPage()));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: new MaterialApp(
            theme: GlobalConfig.themeData,
            home: Scaffold(
              appBar: AppBar(
                title: new Text('Category'),
                centerTitle: true,
                actions: <Widget>[
                  new IconButton(icon: new Icon(Icons.list), onPressed: _favorites),
                ],
                backgroundColor: GlobalConfig.cardBackgroundColor,
                bottom: TabBar(
                  //    backgroundColor: GlobalConfig.cardBackgroundColor,
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        "Residual",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: GlobalConfig.fontColor, fontSize: 18.0),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Wet",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: GlobalConfig.fontColor, fontSize: 18.0),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Recyclable",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: GlobalConfig.fontColor, fontSize: 18.0),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Other",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: GlobalConfig.fontColor, fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
              ),
              body: TabBarView(children: <Widget>[
                ListView.builder(
                    itemCount: _data1.length,
                    itemBuilder: (context, index) {
                      final alreadySaved1 =
                          GlobalConfig.favoritesGarbage.contains(_data1[index]);
                      return Container(
                          padding: EdgeInsets.only(top: 7),
                          margin: const EdgeInsets.only(bottom: 4.0),
                          color: GlobalConfig.rowColor,
                          height: 72,
                          child: ListTile(
                            title: Text(_data1[index],
                                style: TextStyle(
                                    fontSize: GlobalConfig.fontSize * 0.9)),
                            leading: Image.asset(GlobalConfig.fourPic['pic1']),
                            trailing: new IconButton(
                              icon: Icon(
                                alreadySaved1
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: alreadySaved1 ? Colors.red : null,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (alreadySaved1) {
                                    GlobalConfig.favoritesGarbage.remove(_data1[index]);
                                    GlobalConfig.favoritesPic.remove(_data1[index]);
                                  } else {
                                    GlobalConfig.favoritesGarbage.add(_data1[index]);
                                    GlobalConfig.favoritesPic[_data1[index]] = 'pic1';
                                  }
                                });
                              },
                            ),
                          ));
                    }),
                ListView.builder(
                    itemCount: _data2.length,
                    itemBuilder: (context, index) {
                      final alreadySaved2 =
                          GlobalConfig.favoritesGarbage.contains(_data2[index]);
                      return Container(
                          padding: EdgeInsets.only(top: 7),
                          margin: const EdgeInsets.only(bottom: 4.0),
                          color: GlobalConfig.rowColor,
                          height: 72,
                          child: ListTile(
                            title: Text(_data2[index],
                                style: TextStyle(
                                    fontSize: GlobalConfig.fontSize * 0.9)),
                            leading: Image.asset(GlobalConfig.fourPic['pic2']),
                            trailing: new IconButton(
                              icon: Icon(
                                alreadySaved2
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: alreadySaved2 ? Colors.red : null,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (alreadySaved2) {
                                    GlobalConfig.favoritesGarbage.remove(_data2[index]);
                                    GlobalConfig.favoritesPic.remove(_data2[index]);
                                  } else {
                                    GlobalConfig.favoritesGarbage.add(_data2[index]);
                                    GlobalConfig.favoritesPic[_data2[index]] = 'pic2';
                                  }
                                });
                              },
                            ),
                          ));
                    }),
                ListView.builder(
                    itemCount: _data3.length,
                    itemBuilder: (context, index) {
                      final alreadySaved3 =
                          GlobalConfig.favoritesGarbage.contains(_data3[index]);
                      return Container(
                          padding: EdgeInsets.only(top: 7),
                          margin: const EdgeInsets.only(bottom: 4.0),
                          color: GlobalConfig.rowColor,
                          height: 72,
                          child: ListTile(
                            title: Text(_data3[index],
                                style: TextStyle(
                                    fontSize: GlobalConfig.fontSize * 0.9)),
                            leading: Image.asset(GlobalConfig.fourPic['pic3']),
                            trailing: new IconButton(
                              icon: Icon(
                                alreadySaved3
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: alreadySaved3 ? Colors.red : null,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (alreadySaved3) {
                                    GlobalConfig.favoritesGarbage.remove(_data3[index]);
                                    GlobalConfig.favoritesPic.remove(_data3[index]);
                                  } else {
                                    GlobalConfig.favoritesGarbage.add(_data3[index]);
                                    GlobalConfig.favoritesPic[_data3[index]] = 'pic3';
                                  }
                                });
                              },
                            ),
                          ));
                    }),
                ListView.builder(
                    itemCount: _data4.length,
                    itemBuilder: (context, index) {
                      final alreadySaved4 =
                          GlobalConfig.favoritesGarbage.contains(_data4[index]);
                      return Container(
                          padding: EdgeInsets.only(top: 7),
                          margin: const EdgeInsets.only(bottom: 4.0),
                          color: GlobalConfig.rowColor,
                          height: 72,
                          child: ListTile(
                            title: Text(_data4[index],
                                style: TextStyle(
                                    fontSize: GlobalConfig.fontSize * 0.9)),
                            leading: Image.asset(GlobalConfig.fourPic['pic4']),
                            trailing: new IconButton(
                              icon: Icon(
                                alreadySaved4
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: alreadySaved4 ? Colors.red : null,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (alreadySaved4) {
                                    GlobalConfig.favoritesGarbage.remove(_data4[index]);
                                    GlobalConfig.favoritesPic.remove(_data4[index]);
                                  } else {
                                    GlobalConfig.favoritesGarbage.add(_data4[index]);
                                    GlobalConfig.favoritesPic[_data4[index]] = 'pic4';
                                  }
                                });
                              },
                            ),
                          ));
                    }),
              ]),
            )));
  }
}

