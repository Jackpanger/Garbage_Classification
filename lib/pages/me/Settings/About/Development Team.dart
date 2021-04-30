import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../config/global_config.dart';
import 'package:garbage_classification/pages/me/Settings/About.dart';


class DevelopmentTeamPage extends StatelessWidget {
  const DevelopmentTeamPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, size: 25),
          ),
          title: Text("Development Team"),
          centerTitle: true,
        ),
        body: new Container(
          child: new ListView(
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text("Scrum Master", style: TextStyle(fontSize: GlobalConfig.fontSize),),
                    ),
                    ListTile(
                      title: Text("Fu Jiyu", style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text("Product Owner", style: TextStyle(fontSize: GlobalConfig.fontSize),),
                    ),
                    ListTile(
                      title: Text("Zhang Nuoya", style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text("Development Members", style: TextStyle(fontSize: GlobalConfig.fontSize),),
                    ),
                    ListTile(
                      title: Text("Duan Jingyu", style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                    ListTile(
                      title: Text("Liu Jinming", style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                    ListTile(
                      title: Text("Pang Jinhao", style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                    ListTile(
                      title: Text("Tang Peixuan", style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                    ListTile(
                      title: Text("Zhu Jingjun", style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                    ListTile(
                      title: Text("Zou Junjia", style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
