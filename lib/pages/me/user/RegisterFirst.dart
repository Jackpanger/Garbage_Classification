import 'dart:convert';

import 'package:flutter/material.dart';
import '../../../widgets/ConText.dart';
import '../../../widgets/ConButton.dart';
import '../../../config/Config.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterFirstPage extends StatefulWidget {
  RegisterFirstPage({Key key}) : super(key: key);

  _RegisterFirstPageState createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  String tel="";
  sendCode() async {
    RegExp reg = new RegExp(r"^1\d{10}$");
    if (reg.hasMatch(this.tel)) {
      var api = '${Config.home}auth/sendCode';
      var response = await Dio().post(api, data: {"tel": this.tel});
      print(response.data is Map);
      Map data = json.decode(response.data);
      print(data is Map);
      print(data);
      if (data["success"]) {
        print(response);  //演示期间服务器直接返回  给手机发送的验证码
        print({"tel": this.tel});
        Navigator.pushNamed(context, '/registerSecond',arguments: {

          "tel":this.tel
        });

      } else {
        Fluttertoast.showToast(
          msg: '${data["message"]}',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
        );
      }
    } else {
      Fluttertoast.showToast(
        msg: '手机号格式不对',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("用户注册-第一步"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 50),
            ConText(
              text: "请输入手机号",
              onChanged: (value) {
                // print(value);
                this.tel = value;
              },
            ),
            SizedBox(height: 20),
            ConButton(
              text: "下一步",
              color: Colors.red,
              height: 74,
              cb: sendCode,
            )
          ],
        ),
      ),
    );
  }
}
