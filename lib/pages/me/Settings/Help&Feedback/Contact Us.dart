import 'package:flutter/material.dart';
import 'file:///D:/FlutterProject/garbage_classification/lib/config/global_config.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Contact Us"),
          centerTitle: true,
        ),
        body: new Container(
          child: new ListView(
            children: <Widget>[
              Container(
                child: new ListTile(
                  title: new Container(
                    child:
                        new Text("官方客服", style: new TextStyle(fontSize: 20.0)),
                  ),
                ),
              ),
              Container(
                child: new ListTile(
                  title: new Container(
                    child: new Text("邮件邮箱       xxxxxxxx@163.com",
                        style: new TextStyle(fontSize: 16.0)),
                  ),
                ),
              ),
              Container(
                child: new ListTile(
                  title: new Container(
                    child: new Text("微信客服       微信号：p42924580",
                        style: new TextStyle(fontSize: 16.0)),
                  ),
                ),
              ),
              Container(
                child: new ListTile(
                  title: new Container(
                    child: new Text("QQ客服          QQ号：491683019",
                        style: new TextStyle(fontSize: 16.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
