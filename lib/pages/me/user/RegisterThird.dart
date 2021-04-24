import 'package:flutter/material.dart';
import 'package:garbage_classification/pages/tabs/Tabs.dart';
import '../../../widgets/ConText.dart';
import '../../../widgets/ConButton.dart';

import '../../../config/Config.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../services/Storage.dart';
import 'dart:convert';
//引入Tabs


class RegisterThirdPage extends StatefulWidget {
  Map arguments;
  RegisterThirdPage({Key key, this.arguments}) : super(key: key);

  _RegisterThirdPageState createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  String tel;
  String code;
  String password='';
  String rpassword='';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.tel = widget.arguments["tel"];
    this.code = widget.arguments["code"];
  }
  //注册
  doRegister() async {
    if (password.length < 6) {
      Fluttertoast.showToast(
        msg: '密码长度不能小于6位',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    } else if (rpassword != password) {
      Fluttertoast.showToast(
        msg: '密码和确认密码不一致',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    } else {
      var api = '${Config.home}auth/register';
      var response = await Dio().post(api, data: {
        "tel": this.tel,
        "code": this.code,
        "password": this.password
      });
      Map data = json.decode(response.data);

      if (data["success"]) {
        //保存用户信息   
        Storage.setString('userInfo', json.encode(data["userinfo"]));

        //返回到根
        Navigator.of(context).pushAndRemoveUntil(
            new MaterialPageRoute(builder: (context) => new Tabs(index:2)),
            (route) => route == null);
      } else {
        Fluttertoast.showToast(
          msg: '${data["message"]}',
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
        title: Text("用户注册-第三步"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 50),
            ConText(
              text: "请输入密码",
              password: true,
              onChanged: (value) {
                this.password=value;
              },
            ),
            SizedBox(height: 10),
            ConText(
              text: "请输入确认密码",
              password: true,
              onChanged: (value) {
                this.rpassword=value;
              },
            ),
            SizedBox(height: 20),
            ConButton(
              text: "注册",
              color: Colors.red,
              height: 74,
              cb: doRegister,
            )
          ],
        ),
      ),
    );
  }
}