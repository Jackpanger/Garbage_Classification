import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
                    "干垃圾",
                    // textAlign: TextAlign.left,
                    style: TextStyle(color: GlobalConfig.fontColor),
                  ),
                ),
                Tab(
                  child: Text(
                    "湿垃圾",
                    // textAlign: TextAlign.left,
                    style: TextStyle(color: GlobalConfig.fontColor),
                  ),
                ),
                Tab(
                  child: Text(
                    "可回收垃圾",
                    // textAlign: TextAlign.left,
                    style: TextStyle(color: GlobalConfig.fontColor),
                  ),
                ),
                Tab(
                  child: Text(
                    "其他垃圾",
                    // textAlign: TextAlign.left,
                    style: TextStyle(color: GlobalConfig.fontColor),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            ListView.builder(
                itemCount: form1.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(form1[index]["title"]),
                     leading: Image.network(form1[index]['imageUrl']),
                  );
                }),
            ListView.builder(
                itemCount: form2.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(form2[index]["title"]),
                  );
                }),
            ListView.builder(
                itemCount: form3.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(form3[index]["title"]),
                  );
                }),
            ListView.builder(
                itemCount: form4.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(form3[index]["title"]),
                  );
                }),
          ]),
        ));
  }
}
