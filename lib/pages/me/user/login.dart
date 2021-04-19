import 'package:flutter/material.dart';
import 'file:///D:/FlutterProject/garbage_classification/lib/config/global_config.dart';

import '../../../widgets/ConText.dart';
import '../../../widgets/ConButton.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalConfig.barColor,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // title: Text("登录页面"),
        actions: <Widget>[
          TextButton(
            child: Text(
              "客服",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                height: 160,
                width: 160,
                // child: Image.asset('images/login.png'),
                child: Image.asset(
                    'images/open.jpeg',
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 30),
            ConText(
              text: "请输入用户名",
              onChanged: (value) {
                print(value);
              },
            ),
            SizedBox(height: 10),
            ConText(
              text: "请输入密码",
              password: true,
              onChanged: (value) {
                print(value);
              },
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(20),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('忘记密码'),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/registerFirst');
                      },
                      child: Text('新用户注册'),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            ConButton(
              text: "登录",
              color: Colors.red,
              height: 74,
              cb: () {},
            )
          ],
        ),
      ),
    );
  }
}
