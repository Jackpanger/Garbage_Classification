import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:garbage_classification/config/Config.dart';
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
      print(_data1.toString());
    });
  }

  _getData2() async {
    var api = '${Config.home}data/category';
    var response1 = await Dio().post(api, data: {"kind": "wet waste"});
    setState(() {
      _data2 = response1.data["message"];
      print(_data1.toString());
    });
  }

  _getData3() async {
    var api = '${Config.home}data/category';
    var response1 = await Dio().post(api, data: {"kind": "recyclable waste"});
    setState(() {
      _data3 = response1.data["message"];
      print(_data1.toString());
    });
  }

  _getData4() async {
    var api = '${Config.home}data/category';
    var response1 = await Dio().post(api, data: {"kind": "other waste"});
    setState(() {
      _data4 = response1.data["message"];
      print(_data1.toString());
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: GlobalConfig.cardBackgroundColor,
            bottom: TabBar(
              //    backgroundColor: GlobalConfig.cardBackgroundColor,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    "residual waste",
                    // textAlign: TextAlign.left,
                    style: TextStyle(color: GlobalConfig.fontColor),
                  ),
                ),
                Tab(
                  child: Text(
                    "wet waste",
                    // textAlign: TextAlign.left,
                    style: TextStyle(color: GlobalConfig.fontColor),
                  ),
                ),
                Tab(
                  child: Text(
                    "recyclable waste",
                    // textAlign: TextAlign.left,
                    style: TextStyle(color: GlobalConfig.fontColor),
                  ),
                ),
                Tab(
                  child: Text(
                    "other waste",
                    // textAlign: TextAlign.left,
                    style: TextStyle(color: GlobalConfig.fontColor),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            ListView.builder(
                itemCount: _data1.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_data1[index]),
                    leading: Image.asset("images/ganlaji.png"),
                  );
                }),
            ListView.builder(
                itemCount: _data1.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_data2[index]),
                    leading: Image.asset("images/shilaji.png"),
                  );
                }),
            ListView.builder(
                itemCount: _data3.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_data3[index]),
                    leading: Image.asset("images/kehuishoulaji.png"),
                  );
                }),
            ListView.builder(
                itemCount: _data4.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_data4[index]),
                    leading: Image.asset("images/qitalaji.png"),
                  );
                }),
          ]),
        ));
  }
}
