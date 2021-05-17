import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:garbage_classification/config/Config.dart';
import 'package:garbage_classification/generated/l10n.dart';
import 'package:garbage_classification/services/UserServices.dart';
import 'package:image_picker/image_picker.dart';
import '../../config/global_config.dart';
import 'Search.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _imgPath;
  bool isLogin = false;
  List userInfo = [];

  @override
  void initState() {
    super.initState();
    this._getUserInfo();
  }

  _getUserInfo() async {
    var isLogin = await UserServices.getUserLoginState();
    var userInfo = await UserServices.getUserInfo();
    setState(() {
      this.userInfo = userInfo;
      this.isLogin = isLogin;
    });
  }

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

  /*图片控件*/
  Widget _ImageView(imgPath) {
    if (imgPath == null) {
      return Text("");
    } else {
      return Image.file(
        imgPath,
      );
    }
  }

  _uploadData(File imgPath) async {
    print(imgPath);
    print(File(imgPath.path));
    print(imgPath.path);
    print(imgPath.path is String);
    print(await MultipartFile.fromFile(imgPath.path));
    FormData formData = new FormData.fromMap({
      // "tel": userInfo[0]["tel"],
      'type': "classification",
      'image': await MultipartFile.fromFile(imgPath.path)
    });
    // print(formData);
    var response =
        await Dio().post("${Config.home}profile/images", data: formData);
    print(response.data);
    Map data = json.decode(response.data);
    if (data["code"] == 200) {
      print(data["newslist"][0]);
      print(data["newslist"][0]["name"]);
      print(data["newslist"][0]["trust"]);
      print(data["newslist"][0]["lajitype"]);
    }
  }

  List<Map> imgList = [
    {"url": "images/Top1.jpg"},
    {"url": "images/Top2.jpg"},
    {"url": "images/Top3.jpg"}
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: AppBar(
          backgroundColor: GlobalConfig.themeColor,
          title: Text(LanguageChange.of(context).search),
          centerTitle: true,
        ),
        body: Container(
          width: 500,
          // height: 500,
          alignment: Alignment(-1, 0),
          child: Column(
            children: <Widget>[
              Container(
                height: 180,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return new Image.asset(
                      imgList[index]["url"],
                      fit: BoxFit.fill,
                    );
                  },
                  autoplay: true,
                  itemCount: imgList.length,
                  pagination: new SwiperPagination(),
                  control: new SwiperControl(),
                ),
              ),
              // _ImageView(_imgPath),
              SizedBox(height: 10,),
              Container(
                  child: Row(
                children: <Widget>[
                  Expanded(
                    child: new InkWell(
                        onTap: () {
                          showSearch(
                              context: context, delegate: SearchBarDelegate());
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          // alignment: Alignment(-1,0),
                          decoration: new BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(20))),
                          // margin: const EdgeInsets.all(4.0),
                          child: new Image.asset('images/search.png'),
                        )),
                  ),
                  Expanded(
                    child: new InkWell(
                        onTap: _takePhoto,
                        child: Container(
                          width: 100,
                          height: 100,
                          // alignment: Alignment(-1,0),
                          decoration: new BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(20))),
                          // margin: const EdgeInsets.all(4.0),
                          child: new Image.asset('images/camera.png'),
                        )),
                  ),
                  Expanded(
                    child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/voice');
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          // alignment: Alignment(-1,0),
                          decoration: new BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(20))),
                          // margin: const EdgeInsets.all(4.0),
                          child: new Image.asset('images/microphone.png'),
                        )),
                  ),
                ],
              )),
              // SizedBox(height: 10,),
              Container(
                  child: Expanded(
                child: new Image.asset('images/Bottom.jpg'),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
