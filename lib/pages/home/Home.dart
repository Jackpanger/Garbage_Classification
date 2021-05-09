import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:garbage_classification/config/Config.dart';
import 'package:image_picker/image_picker.dart';
import '../../config/global_config.dart';
import 'Search.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _imgPath;

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

  /*图片控件*/
  Widget _ImageView(imgPath) {
    if (imgPath == null) {
      return  Text("")
      ;
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
      "tel": "17615322996",
      'image': await MultipartFile.fromFile(imgPath.path)
    });
    print("formData");
    var response =
    await Dio().post("${Config.home}profile/images", data: formData);
    print(response is Map);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Search"),
          centerTitle: true,
        ),
        body: Container(
          width: 500,
          height: 500,
          alignment: Alignment(-1, 0),
          child: Row(
            children: <Widget>[
              _ImageView(_imgPath),
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
                    onTap: (){

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
          ),
        ),
      ),
    );
  }
}
