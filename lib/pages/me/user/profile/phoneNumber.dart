import 'package:flutter/material.dart';

class PhoneNumber extends StatefulWidget {
  String arguments;
  PhoneNumber({Key key, this.arguments}) : super(key: key);

  @override
  _PhoneNumberState createState() =>
      _PhoneNumberState(arguments: this.arguments);
}

class _PhoneNumberState extends State<PhoneNumber> {
  String arguments;
  _PhoneNumberState({this.arguments});
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: (AppBar(title: Text('电话号码'))),
            body: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          labelText: '请更改用户电话号码',
                          icon: Icon(Icons.phone),
                          hintText: arguments,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                        child: Text('确定'),
                        onPressed: () {
                          Navigator.pop(context, phoneController.text);
                        })),
              ],
            )));
  }
}
