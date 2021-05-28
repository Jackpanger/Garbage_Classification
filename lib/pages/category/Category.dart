import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:garbage_classification/config/Config.dart';
import 'package:garbage_classification/generated/l10n.dart';
import 'package:garbage_classification/pages/me/user/section/favorites.dart';
import 'package:garbage_classification/services/DataStorage.dart';
import 'dart:convert';
import 'package:garbage_classification/services/Storage.dart';
import 'package:garbage_classification/config/global_config.dart';

// import 'res/form1.dart';
// import 'res/form2.dart';
// import 'res/form3.dart';
// import 'res/form4.dart';
import 'package:intl/intl.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<CategoryPage> {
  List _data1 = [];
  List _data2 = [];
  List _data3 = [];
  List _data4 = [];

  _getData1(lan) async {
    var api = '${Config.home}data/category';
    var kind;
    if (lan == "en") {
      kind = "residual waste";
    } else if (lan == "cn") {
      kind = "干垃圾";
    } else {
      kind = "幹垃圾";
    }
    var response = await Dio().post(api, data: {"kind": kind, "lan": lan});
    var data = response.data["message"];
    setState(() {
      if (data != _data1) {
        Storage.setString('data_res', json.encode(data));
        _data1 = response.data["message"];
      }
      // _data1 = response1.data["message"];
      // print(_data1.toString());
    });
  }

  _getData2(lan) async {
    var api = '${Config.home}data/category';
    var kind;
    if (lan == "en") {
      kind = "wet waste";
    } else if (lan == "cn") {
      kind = "湿垃圾";
    } else {
      kind = "濕垃圾";
    }
    var response = await Dio().post(api, data: {"kind": kind, "lan": lan});
    var data = response.data["message"];
    setState(() {
      if (data != _data1) {
        Storage.setString('data_wet', json.encode(data));
        _data2 = response.data["message"];
      }

      // print(_data1.toString());
    });
  }

  _getData3(lan) async {
    var api = '${Config.home}data/category';
    var kind;
    if (lan == "en") {
      kind = "recyclable waste";
    } else if (lan == "cn") {
      kind = "可回收垃圾";
    } else {
      kind = "可回收垃圾";
    }
    var response = await Dio().post(api, data: {"kind": kind, "lan": lan});
    var data = response.data["message"];
    setState(() {
      if (data != _data1) {
        Storage.setString('data_rec', json.encode(data));
        _data3 = response.data["message"];
      }
      //
      // print(_data1.toString());
    });
  }

  _getData4(lan) async {
    var api = '${Config.home}data/category';
    var kind;
    if (lan == "en") {
      kind = "Hazardous waste";
    } else if (lan == "cn") {
      kind = "有害垃圾";
    } else {
      kind = "有害垃圾";
    }
    var response = await Dio().post(api, data: {"kind": kind, "lan": lan});
    var data = response.data["message"];
    setState(() {
      if (data != _data1) {
        Storage.setString('data_other', json.encode(data));
        _data4 = response.data["message"];
      }
      //
      // print(_data1.toString());
    });
  }

  _localData() async {
    var data1 = await DataStorage.getDataInfoRes();
    var data2 = await DataStorage.getDataInfoWet();
    var data3 = await DataStorage.getDataInfoRec();
    var data4 = await DataStorage.getDataInfoOther();
    setState(() {
      _data1 = data1;
      _data2 = data2;
      _data3 = data3;
      _data4 = data4;
    });
  }

  _getData(lan) async {
    _getData1(lan);
    _getData2(lan);
    _getData3(lan);
    _getData4(lan);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _localData();
    print(Intl.getCurrentLocale());
    if (Intl.getCurrentLocale() == "en") {
      _getData("en");
    } else if (Intl.getCurrentLocale() == "zh_TW") {
      _getData("tc");
    } else {
      _getData("cn");
    }
  }

  void _favorites() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => FavoritesPage()));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: new MaterialApp(
            theme: GlobalConfig.themeData,
            home: Scaffold(
              appBar: AppBar(
                title: new Text(LanguageChange.of(context).category),
                centerTitle: true,
                actions: <Widget>[
                  new IconButton(
                      icon: new Icon(Icons.list), onPressed: _favorites),
                ],
                backgroundColor: GlobalConfig.themeColor,
                bottom: TabBar(
                  // unselectedLabelColor: GlobalConfig.arrowColor,
                  // labelColor: Colors.blue,
                  indicatorColor: GlobalConfig.arrowColor, //显示当前位置的指示器颜色
                  indicatorWeight: 3.0,
                  //    backgroundColor: GlobalConfig.cardBackgroundColor,
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        LanguageChange.of(context).residual,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: GlobalConfig.fontColor, fontSize: 18.0),
                      ),

                    ),
                    Tab(
                      child: Text(
                        LanguageChange.of(context).wet,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: GlobalConfig.fontColor, fontSize: 18.0),
                      ),
                    ),
                    Tab(
                      child: Text(
                        LanguageChange.of(context).recyclable,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: GlobalConfig.fontColor, fontSize: 18.0),
                      ),
                    ),
                    Tab(
                      child: Text(
                        LanguageChange.of(context).other,
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
                                    GlobalConfig.favoritesGarbage
                                        .remove(_data1[index]);
                                    GlobalConfig.favoritesPic
                                        .remove(_data1[index]);
                                  } else {
                                    GlobalConfig.favoritesGarbage
                                        .add(_data1[index]);
                                    GlobalConfig.favoritesPic[_data1[index]] =
                                        'pic1';
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
                                    GlobalConfig.favoritesGarbage
                                        .remove(_data2[index]);
                                    GlobalConfig.favoritesPic
                                        .remove(_data2[index]);
                                  } else {
                                    GlobalConfig.favoritesGarbage
                                        .add(_data2[index]);
                                    GlobalConfig.favoritesPic[_data2[index]] =
                                        'pic2';
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
                                    GlobalConfig.favoritesGarbage
                                        .remove(_data3[index]);
                                    GlobalConfig.favoritesPic
                                        .remove(_data3[index]);
                                  } else {
                                    GlobalConfig.favoritesGarbage
                                        .add(_data3[index]);
                                    GlobalConfig.favoritesPic[_data3[index]] =
                                        'pic3';
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
                                    GlobalConfig.favoritesGarbage
                                        .remove(_data4[index]);
                                    GlobalConfig.favoritesPic
                                        .remove(_data4[index]);
                                  } else {
                                    GlobalConfig.favoritesGarbage
                                        .add(_data4[index]);
                                    GlobalConfig.favoritesPic[_data4[index]] =
                                        'pic4';
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
