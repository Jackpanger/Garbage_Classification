import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:garbage_classification/config/global_config.dart';
import 'package:garbage_classification/generated/l10n.dart';
import 'package:garbage_classification/widgets/ConButton.dart';
import 'package:garbage_classification/widgets/ConText.dart';
import 'package:garbage_classification/config/Config.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterSecondPage extends StatefulWidget {
  Map arguments;

  RegisterSecondPage({Key key, this.arguments}) : super(key: key);

  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  String tel;
  bool sendCodeBtn = false;
  int seconds = 10;
  String code;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.tel = widget.arguments['tel'];
    this._showTimer();
  }

  _showTimer() {
    Timer t;
    t = Timer.periodic(Duration(milliseconds: 1000), (timer) {
      setState(() {
        this.seconds--;
      });
      if (this.seconds == 0) {
        t.cancel();
        setState(() {
          this.sendCodeBtn = true;
        });
      }
    });
  }

  sendCode() async {
    setState(() {
      this.sendCodeBtn = false;
      this.seconds = 60;
      this._showTimer();
    });
    var api = '${Config.home}auth/sendCode';
    var response = await Dio().post(api, data: {"tel": this.tel});
    Map data = json.decode(response.data);
    if (data["success"]) {
      print(response);
    }
  }

  validateCode() async {
    var api = '${Config.home}auth/validateCode';
    var response =
        await Dio().post(api, data: {"tel": this.tel, "code": this.code});
    Map data = json.decode(response.data);
    print(data);
    if (data["success"]) {
      Navigator.pushNamed(context, '/registerThird',
          arguments: {"tel": this.tel, "code": this.code});
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
          appBar: AppBar(
            title: Text(LanguageChange.of(context).user_registration_two),
            backgroundColor: GlobalConfig.themeColor,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_rounded),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 50),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(LanguageChange.of(context).code_has_sent_number +
                      "${this.tel}" +
                      LanguageChange.of(context).please_type_in_code),
                ),
                SizedBox(height: 40),
                Stack(
                  children: <Widget>[
                    Container(
                      child: ConText(
                        text: LanguageChange.of(context).code,
                        onChanged: (value) {
                          // print(value);
                          this.code = value;
                        },
                      ),
                      height: 100,
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: this.sendCodeBtn
                          ? ElevatedButton(
                              child: Text(LanguageChange.of(context).resend),
                              onPressed: this.sendCode,
                            )
                          : ElevatedButton(
                              child: Text(
                                  LanguageChange.of(context).send_after +
                                      "${this.seconds}"),
                              onPressed: () {},
                            ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                ConButton(
                  text: LanguageChange.of(context).next,
                  color: Colors.red,
                  height: 74,
                  cb: this.validateCode,
                )
              ],
            ),
          ),
        ));
  }
}
