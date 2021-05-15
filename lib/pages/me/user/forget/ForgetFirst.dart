import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:garbage_classification/config/Config.dart';
import 'package:garbage_classification/widgets/ConButton.dart';
import 'package:garbage_classification/widgets/ConText.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgetFirstPage extends StatefulWidget {
  ForgetFirstPage({Key key}) : super(key: key);

  _ForgetFirstPageState createState() => _ForgetFirstPageState();
}

class _ForgetFirstPageState extends State<ForgetFirstPage> {
  String tel="";
  sendCode() async {
    // RegExp reg = new RegExp(r"^1\d{10}$");
    // if (reg.hasMatch(this.tel)) {
      // var api = '${Config.home}auth/sendCode';
      // var response = await Dio().post(api, data: {"tel": this.tel});
      // print(response.data is Map);
      // Map data = json.decode(response.data);
      // print(data is Map);
      // print(data);
      // if (data["success"]) {
      //   print(response);
      //   print({"tel": this.tel});
        Navigator.pushNamed(context, '/forgetSecond',arguments: {
          "tel":this.tel
        });

      // } else {
      //   Fluttertoast.showToast(
      //     msg: '${data["message"]}',
      //     toastLength: Toast.LENGTH_SHORT,
      //     gravity: ToastGravity.CENTER,
      //   );
      // }
    // }
    // else {
    //   Fluttertoast.showToast(
    //     msg: 'Format of phone number is wrong',
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.CENTER,
    //   );
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forget password-First"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 50),
            ConText(
              text: "Please type in your number",
              onChanged: (value) {
                // print(value);
                this.tel = value;
              },
            ),
            SizedBox(height: 20),
            ConButton(
              text: "Next",
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
