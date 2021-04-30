import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../config/global_config.dart';
import 'package:garbage_classification/pages/me/Settings.dart';


class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Settings()));
            },
            icon: Icon(Icons.arrow_back, size: 25),
          ),
          title: Text("Contact Us"),
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
                      title: Text("微信客服", style: TextStyle(fontSize: GlobalConfig.fontSize),),
                    ),
                    ListTile(
                      title: Text("微信号：p42924580", style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text("QQ客服", style: TextStyle(fontSize: GlobalConfig.fontSize),),
                    ),
                    ListTile(
                      title: Text("QQ号：491683019", style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text("邮件邮箱", style: TextStyle(fontSize: GlobalConfig.fontSize),),
                    ),
                    ListTile(
                      title: Text("xxxxxxxx@gmail.com", style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
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
