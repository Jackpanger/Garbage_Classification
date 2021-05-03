import 'package:date_format/date_format.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker_fork/flutter_cupertino_date_picker_fork.dart';
import 'package:garbage_classification/config/Config.dart';
import 'package:garbage_classification/config/global_config.dart';
import 'package:garbage_classification/pages/me/user/profile/userName.dart';
import 'package:garbage_classification/services/UserServices.dart';
import './phoneNumber.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class UserMessage extends StatefulWidget {
  UserMessage({
    Key key,
  }) : super(key: key);

  @override
  _UserMessageState createState() => _UserMessageState();
}

class _UserMessageState extends State<UserMessage> {
  DateTime _dateTime = DateTime.now();
  String userName = "";
  String tel = "";
  String birthday = '2000年1月1号';
  String userSex = 'male';
  String avatar = "";

  var _imgPath;

  @override
  void initState() {
    super.initState();
    this._getUserInfo();
  }

  _getUserInfo() async {
    var userInfo = await UserServices.getUserInfo();
    setState(() {
      tel = userInfo[0]["tel"];
      userName = userInfo[0]["username"];
      print(userInfo);
    });
  }

  _changeAvatar() async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200.0,
            child: Column(
              children: <Widget>[
                _ImageView(_imgPath),
                TextButton(
                    onPressed: _takePhoto,
                    child: ListTile(
                      title: Text('拍照'),
                )
                ),
                Divider(),
                TextButton(
                    onPressed: _openGallery,
                    child: ListTile(
                      title: Text('本地照片'),
                    )
                ),
              ],
            ),
          );
        });
  }

  /*图片控件*/
  Widget _ImageView(imgPath) {
    if (imgPath == null) {
      return Center(
        child: Text("请选择图片或拍照"),

      );
    } else {
      return Image.file(
        imgPath,
      );
    }
  }

  /*拍照*/
  _takePhoto() async {
    final image =
        await ImagePicker().getImage(source: ImageSource.camera, maxWidth: 400);
    _uploadData(File(image.path)); //上传
    setState(() {
      if (image != null) {
        _imgPath = File(image.path);
      } else {
        print('No image selected.');
      }
    });
  }

  /*相册*/
  _openGallery() async {
    var image = await ImagePicker().getImage(source: ImageSource.gallery);
    _uploadData(File(image.path)); //
    setState(() {
      if (image != null) {
        _imgPath = File(image.path);
      } else {
        print('No image selected.');
      }
    });
  }

  _uploadData(File imgPath) async {
    print(imgPath);
    print(File(imgPath.path));
    print(imgPath.path);
    print(imgPath.path is String);
    print(await MultipartFile.fromFile(imgPath.path));
    FormData formData = new FormData.fromMap({
      "tel": "17615322996",
      'image': await MultipartFile.fromFile(imgPath.path)
    });
    print("formData");
    var response =
        await Dio().post("${Config.home}profile/images", data: formData);
    print(response is Map);
  }

  _changeSex() async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 150.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('male'),
                  onTap: () {
                    setState(() {
                      this.userSex = 'male';
                    });

                    Navigator.pop(context, 'male');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('female'),
                  onTap: () {
                    setState(() {
                      this.userSex = 'female';
                    });
                    Navigator.pop(context, 'female');
                  },
                ),
              ],
            ),
          );
        });
  }

  _upload_username() async {
    Navigator.of(context)
        .push(MaterialPageRoute(
            builder: (context) => UserName(
                  arguments: {"tel": this.tel, "username": userName},
                )))
        .then((value) => _getName(value));
  }

  _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      onMonthChangeStartWithFirstDate: true,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
      ),
      minDateTime: DateTime.parse("1980-01-01"),
      maxDateTime: DateTime.parse("2021-05-05"),
      initialDateTime: _dateTime,
      dateFormat: "yyyy-MMM-dd",
      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      // onChange: (dateTime, List<int> index) {
      //   setState(() {
      //     _dateTime = dateTime;
      //   });
      // },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
          this.birthday =
              '${formatDate(_dateTime, [yyyy, '年', mm, '月', 'dd'])}';
        });
      },
    );
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
      value = this.tel;
    }
    if (value == null) {
      value = this.tel;
    }
    setState(() {
      this.tel = value;
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
      child: new MaterialApp(
        theme: GlobalConfig.themeData,
        home: Scaffold(
          appBar: AppBar(
            title: Text('用户信息'),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_rounded),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
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
                            top: 10,
                            child: new CircleAvatar(
                                backgroundImage: AssetImage(
                                    "../../images/proimage.jpg"),
                                radius: 20.0),
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
                      onPressed: _changeAvatar
                      // onPressed: () {
                      //   Navigator.pushNamed(context, 'profilePhoto');
                      // },
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
                    onPressed: _upload_username),
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
                          child: Text(this.tel), //这里要改成this.动态的
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
                                  arguments: tel,
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
                    onPressed: _showDatePicker),
              ),
            ],
          )),
      ) );
  }
}
