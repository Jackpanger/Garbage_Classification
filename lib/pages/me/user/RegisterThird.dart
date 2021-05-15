import 'package:flutter/material.dart';
import 'package:garbage_classification/pages/tabs/Tabs.dart';
import 'package:garbage_classification/widgets/ConText.dart';
import 'package:garbage_classification/widgets/ConButton.dart';

import 'package:garbage_classification/config/Config.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:garbage_classification/services/Storage.dart';
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
        msg: 'Length of password cannot less than 6',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    } else if (rpassword != password) {
      Fluttertoast.showToast(
        msg: 'Not consistent',
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
      print(data);
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
        title: Text("User registration-Third"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 50),
            ConText(
              text: "Please input your password",
              password: true,
              onChanged: (value) {
                this.password=value;
              },
            ),
            SizedBox(height: 10),
            ConText(
              text: "Please confirm your password",
              password: true,
              onChanged: (value) {
                this.rpassword=value;
              },
            ),
            SizedBox(height: 20),
            ConButton(
              text: "Registration",
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
