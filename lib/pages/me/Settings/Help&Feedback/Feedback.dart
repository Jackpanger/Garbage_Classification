import 'package:flutter/material.dart';
import 'package:garbage_classification/global_config.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({Key key}) : super(key: key);

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
                        new Text("请填写联系方式（选填 备注如QQ，微信，邮箱）", style: new TextStyle(fontSize: 15.0)),
                  ),
                ),
              ),
              Container(
                child: new ListTile(
                  title: new Container(
                    child:
                    new Text("请填写意见反馈内容", style: new TextStyle(fontSize: 15.0)),
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
