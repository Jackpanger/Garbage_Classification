import 'dart:convert';

import 'package:date_format/date_format.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker_fork/flutter_cupertino_date_picker_fork.dart';
import 'package:garbage_classification/config/Config.dart';
import 'package:garbage_classification/config/global_config.dart';
import 'package:garbage_classification/generated/l10n.dart';
import 'package:garbage_classification/pages/me/user/profile/userName.dart';
import 'package:garbage_classification/services/Storage.dart';
import 'package:garbage_classification/services/UserServices.dart';
import 'package:path_provider/path_provider.dart';
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
  bool isImage = false;
  var _imgPath;

  @override
  void initState() {
    super.initState();
    this._getUserInfo();
    this._getUserImage();
    // _getCurrentPath().then((e) => print(e.absolute.path));
  }

  _getCurrentPath() async {
    return await getApplicationDocumentsDirectory();
  }

  _getUserImage() async {
    var state = await UserServices.getUserImageState();
    var imagePath = await UserServices.getImageInfo();
    setState(() {
      this.isImage = state;
      if (isImage) _imgPath = File(imagePath);
    });
  }

  _getUserInfo() async {
    var userInfo = await UserServices.getUserInfo();
    setState(() {
      tel = userInfo[0]["tel"];
      userName = userInfo[0]["username"];
      userSex = userInfo[0]["gender"];
      birthday = userInfo[0]["birthday"];
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
                // _ImageView(_imgPath),
                TextButton(
                    onPressed: _takePhoto,
                    child: ListTile(
                      title: Text(LanguageChange.of(context).take_photo),
                )
                ),
                Divider(),
                TextButton(
                    onPressed: _openGallery,
                    child: ListTile(
                      title: Text(LanguageChange.of(context).choose_picture),
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
        child: Text(LanguageChange.of(context).please_c_t),

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
        print(LanguageChange.of(context).no_image_selected);
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
        print(LanguageChange.of(context).no_image_selected);
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
      "type": "profile",
      "tel": "17615322996",
      'image': await MultipartFile.fromFile(imgPath.path)
    });
    print("formData");
    var response =
        await Dio().post("${Config.home}profile/images", data: formData);
    var data = json.decode(response.data);
    print(response);
    setState(() {
      isImage = true;
      Storage.setString('userInfo', json.encode(data["userinfo"]));
      Storage.setString('image', json.encode(imgPath.path));
    });
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
                  title: Text(LanguageChange.of(context).male),
                  onTap: () {
                    setState(() {
                      this.userSex = LanguageChange.of(context).male;
                      _doUpload("gender", "male");
                    });

                    Navigator.pop(context, LanguageChange.of(context).male);
                  },
                ),
                Divider(),
                ListTile(
                  title: Text(LanguageChange.of(context).female),
                  onTap: () {
                    setState(() {
                      this.userSex = LanguageChange.of(context).female;
                      _doUpload("gender", "female");
                    });
                    Navigator.pop(context, LanguageChange.of(context).female);
                  },
                ),
              ],
            ),
          );
        });
  }

  _doUpload(param, content) async {
    var api = '${Config.home}profile/details';
    var response = await Dio().post(api, data: {"tel": tel, param: content});
    Map data = json.decode(response.data);

    if (data["success"]) {
      //保存用户信息
      Storage.setString('userInfo', json.encode(data["userinfo"]));
    }
  }

  // ignore: non_constant_identifier_names
  _upload_username() async {
    Navigator.of(context)
        .push(MaterialPageRoute(
            builder: (context) => UserName(
                  arguments: {LanguageChange.of(context).tel: this.tel, LanguageChange.of(context).username: userName},
                )))
        .then((value) => _getName(value));
  }
  _upload_tel() async {
    Navigator.of(context)
        .push(MaterialPageRoute(
        builder: (context) => PhoneNumber(
          arguments: {"tel": this.tel},
        )))
        .then((value) => _getNumber(value));

  }

  _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      onMonthChangeStartWithFirstDate: true,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text(LanguageChange.of(context).confirm, style: TextStyle(color: Colors.red)),
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
              '${formatDate(_dateTime, [yyyy, LanguageChange.of(context).year, mm, LanguageChange.of(context).month, 'dd'])}';

          _doUpload("birthday", birthday);
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

  // _getBirthday(value) {
  //   if (value == '') {
  //     value = this.birthday;
  //   }
  //   if (value == null) {
  //     value = this.birthday;
  //   }
  //   setState(() {
  //     this.birthday = value;
  //   });
  // }

  // final arguments;
  // UserMessage({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: new MaterialApp(
      theme: GlobalConfig.themeData,
      home: Scaffold(
          appBar: AppBar(
            title: Text(LanguageChange.of(context).user_information),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_rounded),
              onPressed: () {
                Navigator.of(context).pop(true);
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
                                backgroundImage: isImage
                                    ? FileImage(_imgPath)
                                    : AssetImage("images/proimage.jpg"),
                                radius: 20.0),
                          ),
                          Positioned(
                            child: Container(
                              child: ListTile(
                                  title: Container(
                                    margin: const EdgeInsets.all(10.0),
                                    child: Text(LanguageChange.of(context).profile),
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
                                  child: Text(LanguageChange.of(context).username),
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
                                child: Text(LanguageChange.of(context).tel),
                              ),
                              trailing: Icon(Icons.chevron_right)),
                        ),
                      ),
                    ],
                  )),
                  onPressed: _upload_tel
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
                                  child: Text(LanguageChange.of(context).gender),
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
                                  child: Text(LanguageChange.of(context).birthday),
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
    ));
  }
}
