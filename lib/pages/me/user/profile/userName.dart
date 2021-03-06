import 'dart:convert';
import 'package:garbage_classification/config/global_config.dart';
import 'package:garbage_classification/generated/l10n.dart';

import '../../../../services/Storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:garbage_classification/config/Config.dart';

class UserName extends StatefulWidget {
  Map arguments;
  UserName({Key key, this.arguments}) : super(key: key);

  @override
  _UserNameState createState() => _UserNameState(arguments: this.arguments);
}

class _UserNameState extends State<UserName> {
  Map arguments;
  String tel;
  _UserNameState({this.arguments});
  TextEditingController userNameController = TextEditingController();
  @override
  void initState(){
    super.initState();
    this.tel = widget.arguments["tel"];
  }
  doUpload() async {

      var api = '${Config.home}profile/details';
      var response = await Dio().post(api, data: {
        "tel":tel,
        "username": this.userNameController.text
      });
      Map data = json.decode(response.data);

      if (data["success"]) {
        //保存用户信息
        Storage.setString('userInfo', json.encode(data["userinfo"]));
        //
        //返回到根
        Navigator.pop(context, userNameController.text);
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
            appBar: (AppBar(title: Text(LanguageChange.of(context).username),
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
                        controller: userNameController,
                        decoration: InputDecoration(
                          labelText: LanguageChange.of(context).please_change_name,
                          icon: Icon(Icons.people),
                          hintText: widget.arguments[LanguageChange.of(context).username],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(20.0),
                    child: ElevatedButton(
                        child: Text(LanguageChange.of(context).confirm),
                        onPressed:doUpload,
                    )),
              ],
            )));
  }
}
