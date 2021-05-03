import 'package:flutter/material.dart';
import 'package:garbage_classification/config/Config.dart';
import 'package:garbage_classification/pages/category/res/form1.dart';
import 'package:garbage_classification/pages/category/res/form2.dart';
import 'package:garbage_classification/pages/category/res/form3.dart';
import 'package:garbage_classification/pages/category/res/form4.dart';
import 'garbageInfo.dart';
import 'kind.dart';
import 'dart:convert';
import 'package:dio/dio.dart';

const recentSuggest = [];

class SearchBarDelegate extends SearchDelegate<String> {
  // Future<Map> _getData(query, context) async {
  //   var apiUrl = Uri.parse(
  //       'http://api.tianapi.com/txapi/lajifenlei/index?key=c68b31c7fd6da492daceb9b059456e41&word=' +
  //           query);
  //   print(apiUrl.toString());
  //   var response = await Dio().post(apiUrl.toString());
  //   print(response.data is Map);
  //   Map data = json.decode(response.data);
  //   return data;
  // }
  Future<Map> _getData(query, context) async {
    var apiUrl = Uri.parse(
        'http://api.tianapi.com/txapi/lajifenlei/index?key=c68b31c7fd6da492daceb9b059456e41&word=' +
            query);
    var response = await Dio().post(apiUrl.toString());
    print(response.data is Map);
    return await Future.delayed(Duration(seconds: 5), () {
      // 模拟有数据
      return response.data;
      // 模拟加载出错
      // throw AssertionError("ERROR");
    });
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = "",
      )
    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    // for (int i = 0; i < form1.length; i++) {
    //   if (query == form1[i]['title']) {
    //     result = "Residual waste";
    //   }
    // }
    // for (int i = 0; i < form2.length; i++) {
    //   if (query == form2[i]['title']) {
    //     result = "Wet waste";
    //   }
    // }
    // for (int i = 0; i < form3.length; i++) {
    //   if (query == form3[i]['title']) {
    //     result = "Recyclable waste";
    //   }
    // }
    // for (int i = 0; i < form4.length; i++) {
    //   if (query == form4[i]['title']) {
    //     result = "other waste";
    //   }
    // }
    // if (result == null) {
    //   result = "Not found";
    // }
    // print(result);
    print(_getData);
    return FutureBuilder(
      future: _getData(query, context),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return Center(child: CircularProgressIndicator());
          case ConnectionState.waiting:
          case ConnectionState.active:
            print("--------->loading");
            return Center(child: CircularProgressIndicator());
          case ConnectionState.done:
            print("--------->done");
            if (snapshot.hasError) {
              print("--------->error");
              return Container(
                child: Center(
                  child: Text(
                    "load data fail",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              );
            } else if (snapshot.hasData) {
              print("--------->data");
              if (snapshot.data["msg"] == "success") {
                var data = snapshot.data["newslist"][0];
                var type;
                if (data["type"] == 0) {
                  type = "recyclable waste";
                } else if (data["type"] == 1) {
                  type = "other waste";
                } else if (data["type"] == 2) {
                  type = "wet waste";
                } else if (data["type"] == 3) {
                  type = "residual waste";
                }
                return Scaffold(
                  body: garbageInfo(data["name"], type, data["explain"],
                      data["contain"], data["tip"]),
                );
              }
            }
        }
        return Center(child: Text("Not found"));
      },
    );
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () => close(context, null));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionsList = query.isEmpty
        ? recentSuggest
        : searchList.where((input) => input.startsWith(query)).toList();

    return ListView.builder(
        itemCount: suggestionsList.length,
        itemBuilder: (context, index) => ListTile(
              title: RichText(
                //富文本
                text: TextSpan(
                    text: suggestionsList[index].substring(0, query.length),
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: suggestionsList[index].substring(query.length),
                          style: TextStyle(color: Colors.grey))
                    ]),
              ),
              onTap: () {
                query = suggestionsList[index];
                buildResults(context);
              },
            ));
  }

  Widget garbageInfo(
    String name,
    String type,
    String explain,
    String contain,
    String tip,
  ) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
            body: Column(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.asset('images/search.png', fit: BoxFit.cover),
                  width: 200,
                  height: 200,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                ),
                Text('Name:  $name'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Text('Type:  $type'),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  '  Comment：',
                  style: TextStyle(fontSize: 23.0, color: Colors.green),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Expanded(child: Text('$explain')),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  '  Same type：',
                  style: TextStyle(fontSize: 23.0, color: Colors.green),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Expanded(child: Text('$contain')),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  '  Dispose ：',
                  style: TextStyle(fontSize: 23.0, color: Colors.green),
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Expanded(child: Text('$tip')),
              ],
            ),
          ],
        )));
  }
}
