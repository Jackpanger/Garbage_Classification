import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:garbage_classification/config/Config.dart';
import 'package:garbage_classification/pages/tabs/Tabs.dart';
import '../../../config/global_config.dart';
import '../../../services/Storage.dart';
import '../../../widgets/ConText.dart';
import '../../../widgets/ConButton.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username;
  String password;

  doLogin() async {
    if (password.length < 6) {
      Fluttertoast.showToast(
        msg: '密码长度不能小于6位',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    } else {
      var api = '${Config.home}auth/login';
      var response = await Dio().post(api,
          data: {"username": this.username, "password": this.password});
      if (response.data["success"]) {
        //保存用户信息
        Storage.setString('userInfo', json.encode(response.data["userinfo"]));

        //返回到根
        Navigator.of(context).pushAndRemoveUntil(
            new MaterialPageRoute(builder: (context) => new Tabs(index: 2)),
            (route) => route == null);
      } else {
        Fluttertoast.showToast(
          msg: '${response.data["message"]}',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
        );
      }
    }
  }

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
                child: Image.asset('images/open.jpeg', fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 30),
            ConText(
              text: "请输入用户名",
              onChanged: (value) {
                this.username = value;
              },
            ),
            SizedBox(height: 10),
            ConText(
              text: "请输入密码",
              password: true,
              onChanged: (value) {
                this.password = value;
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
              text: "Login",
              color: Colors.red,
              height: 74,
              cb: doLogin,
            )
          ],
        ),
      ),
    );
  }
}
