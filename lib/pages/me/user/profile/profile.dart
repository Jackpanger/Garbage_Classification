
import 'package:flutter/material.dart';
import 'package:garbage_classification/pages/me/user/profile/userName.dart';
import './phoneNumber.dart';
import 'birthday.dart';

class UserMessage extends StatefulWidget {
  UserMessage({
    Key key,
  }) : super(key: key);

  @override
  _UserMessageState createState() => _UserMessageState();
}

class _UserMessageState extends State<UserMessage> {
  String userName = '垃圾分类人';
  String birthday = '2000年1月1号';

  String userSex = '男';
  String phoneNumber = '1234567891';

  _changeSex() async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 150.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('男'),
                  onTap: () {
                    setState(() {
                      this.userSex = '男';
                    });

                    Navigator.pop(context, '男');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('女'),
                  onTap: () {
                    setState(() {
                      this.userSex = '女';
                    });
                    Navigator.pop(context, '女');
                  },
                ),
              ],
            ),
          );
        });
  }

  _getName(value) {
    if (value == '') {
      value = this.userName;
    }
    if (value == null) {
      value = this.userName;
    }
    setState(() {
      this.userName = value;
    });
  }

  _getNumber(value) {
    if (value == '') {
      value = this.phoneNumber;
    }
    if (value == null) {
      value = this.phoneNumber;
    }
    setState(() {
      this.phoneNumber = value;
    });
  }

  _getBirthday(value) {
    if (value == '') {
      value = this.birthday;
    }
    if (value == null) {
      value = this.birthday;
    }
    setState(() {
      this.birthday = value;
    });
  }

  // final arguments;
  // UserMessage({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text('用户信息'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: 100.0,
                  child: OutlineButton(
                    child: Container(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              right: 100,
                              top: 20,
                              child: Container(
                                child: Text('这里是个头像'), //!!!!!!!!!这里需要改正！！换成图片
                              ),
                            ),
                            Positioned(
                              child: Container(
                                child: ListTile(
                                    title: Container(
                                      margin: const EdgeInsets.all(10.0),
                                      child: Text('头像'),
                                    ),
                                    trailing: Icon(Icons.chevron_right)),
                              ),
                            )
                          ],
                        )),
                    onPressed: () {
                      Navigator.pushNamed(context, 'profilePhoto');
                    },
                  )),
              Container(
                height: 50.0,
                child: OutlineButton(
                  child: Container(
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            right: 100,
                            top: 20,
                            child: Container(
                              child: Text(this.userName), //这里要改成this.动态的,传参数问题
                            ),
                          ),
                          Positioned(
                            child: Container(
                              child: ListTile(
                                  title: Container(
                                    margin: const EdgeInsets.all(10.0),
                                    child: Text('用户名'),
                                  ),
                                  trailing: Icon(Icons.chevron_right)),
                            ),
                          ),
                        ],
                      )),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(
                        builder: (context) => UserName(
                          arguments: userName,
                        )))
                        .then((value) => _getName(value));
                  },
                ),
              ),
              Container(
                height: 50.0,
                child: OutlineButton(
                  child: Container(
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            right: 100,
                            top: 20,
                            child: Container(
                              child: Text(this.phoneNumber), //这里要改成this.动态的
                            ),
                          ),
                          Positioned(
                            child: Container(
                              child: ListTile(
                                  title: Container(
                                    margin: const EdgeInsets.all(10.0),
                                    child: Text('手机号'),
                                  ),
                                  trailing: Icon(Icons.chevron_right)),
                            ),
                          ),
                        ],
                      )),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(
                        builder: (context) => PhoneNumber(
                          arguments: phoneNumber,
                        )))
                        .then((value) => _getNumber(value));
                  },
                ),
              ),
              Container(
                height: 50.0,
                child: OutlineButton(
                    child: Container(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              right: 100,
                              top: 20,
                              child: Container(
                                child: Text(this.userSex), //这里要改成this.动态的
                              ),
                            ),
                            Positioned(
                              child: Container(
                                child: ListTile(
                                    title: Container(
                                      margin: const EdgeInsets.all(10.0),
                                      child: Text('性别'),
                                    ),
                                    trailing: Icon(Icons.chevron_right)),
                              ),
                            ),
                          ],
                        )),
                    onPressed: _changeSex),
              ),
              Container(
                height: 50.0,
                child: OutlineButton(
                  child: Container(
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            right: 100,
                            top: 20,
                            child: Container(
                              child: Text(birthday), //这里要改成this.动态的
                            ),
                          ),
                          Positioned(
                            child: Container(
                              child: ListTile(
                                  title: Container(
                                    margin: const EdgeInsets.all(10.0),
                                    child: Text('出生日期'),
                                  ),
                                  trailing: Icon(Icons.chevron_right)),
                            ),
                          ),
                        ],
                      )),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(
                        builder: (context) => Birthday(
                          arguments: birthday,
                        )))
                        .then((value) => _getBirthday(value));
                  },
                ),
              ),
            ],
          )),
    );
  }
}
