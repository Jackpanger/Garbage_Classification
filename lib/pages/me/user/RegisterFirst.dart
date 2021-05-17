import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:garbage_classification/generated/l10n.dart';
import 'package:garbage_classification/widgets/ConButton.dart';
import 'package:garbage_classification/widgets/ConText.dart';
import 'package:garbage_classification/config/Config.dart';
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
        print(response);
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
        msg: LanguageChange.of(context).format_of_number_wrong,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LanguageChange.of(context).user_registration_one),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 50),
            ConText(
              text: LanguageChange.of(context).please_type_your_number,
              onChanged: (value) {
                // print(value);
                this.tel = value;
              },
            ),
            SizedBox(height: 20),
            ConButton(
              text: LanguageChange.of(context).next,
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
