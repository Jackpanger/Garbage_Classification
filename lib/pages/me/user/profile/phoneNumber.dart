import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:garbage_classification/services/Storage.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:garbage_classification/config/Config.dart';
import 'package:garbage_classification/config/global_config.dart';

class PhoneNumber extends StatefulWidget {
  Map arguments;
  PhoneNumber({Key key, this.arguments}) : super(key: key);

  @override
  _PhoneNumberState createState() =>
      _PhoneNumberState(arguments: this.arguments);
}

class _PhoneNumberState extends State<PhoneNumber> {
  Map arguments;
  _PhoneNumberState({this.arguments});
  TextEditingController phoneController = TextEditingController();
  String tel;
  void initState(){
    this.tel = widget.arguments["tel"];
  }
  doUpload() async {

    var api = '${Config.home}profile/tel';
    var response = await Dio().post(api, data: {
      "tel":tel,
      "new_tel": this.phoneController.text
    });
    Map data = json.decode(response.data);

    if (data["success"]) {
      //保存用户信息
      Storage.setString('userInfo', json.encode(data["userinfo"]));
      //
      //返回到根
      Navigator.pop(context, phoneController.text);
    } else {
      Fluttertoast.showToast(
        msg: '${data["message"]}',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: GlobalConfig.themeData,
        home: Scaffold(
            appBar: (AppBar(title: Text('Tel'),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_rounded),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              ),
            )),
            body: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          labelText: 'Please change phone number',
                          icon: Icon(Icons.phone),
                          hintText: arguments["tel"],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                        child: Text('Confirm'),
                        onPressed: () {
                          doUpload();
                        })),
              ],
            )));
  }
}
