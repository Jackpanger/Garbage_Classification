import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:garbage_classification/config/Config.dart';
import 'package:garbage_classification/widgets/ConButton.dart';
import 'package:garbage_classification/widgets/ConText.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgetSecondPage extends StatefulWidget {
  Map arguments;
  ForgetSecondPage({Key key, this.arguments}) : super(key: key);

  _ForgetSecondPageState createState() => _ForgetSecondPageState();
}

class _ForgetSecondPageState extends State<ForgetSecondPage> {
  String tel;
  bool sendCodeBtn = false;
  int seconds = 10;
  String code;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.tel = widget.arguments['tel'];
    // this._showTimer();
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
      // this._showTimer();
    });
    // var api = '${Config.home}auth/sendCode';
    // var response = await Dio().post(api, data: {"tel": this.tel});
    // Map data = json.decode(response.data);
    // if (data["success"]) {
    //   print(response);
    // }
  }

  validateCode() async {
    // var api = '${Config.home}auth/validateCode';
    // var response =
    //     await Dio().post(api, data: {"tel": this.tel, "code": this.code});
    // Map data = json.decode(response.data);
    // print(data);
    // if (data["success"]) {
      Navigator.pushNamed(context, '/forgetThird',arguments: {
        "tel":this.tel,
        "code":this.code
      });
    // } else {
    //   Fluttertoast.showToast(
    //     msg: '${data["message"]}',
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.CENTER,
    //   );
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forget password-Second"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Text("Code has sent to your number ${this.tel}，Please type in the code"),
            ),
            SizedBox(height: 40),
            Stack(
              children: <Widget>[
                Container(
                  child: ConText(
                    text: "Code",
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
                          child: Text('Resend'),
                          onPressed: this.sendCode,
                        )
                      : ElevatedButton(
                          child: Text('Send after ${this.seconds}'),
                          onPressed: () {},
                        ),
                )
              ],
            ),
            SizedBox(height: 20),
            ConButton(
              text: "Next",
              color: Colors.red,
              height: 74,
              cb: this.validateCode,
            )
          ],
        ),
      ),
    );
  }
}
