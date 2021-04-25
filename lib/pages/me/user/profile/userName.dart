import 'package:flutter/material.dart';

class UserName extends StatefulWidget {
  String arguments;
  UserName({Key key, this.arguments}) : super(key: key);

  @override
  _UserNameState createState() => _UserNameState(arguments: this.arguments);
}

class _UserNameState extends State<UserName> {
  String arguments;
  _UserNameState({this.arguments});

  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: (AppBar(title: Text('用户名称'))),
            body: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: userNameController,
                        decoration: InputDecoration(
                          labelText: '请更改用户名称',
                          icon: Icon(Icons.people),
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
                          Navigator.pop(context, userNameController.text);
                        })),
              ],
            )));
  }
}
