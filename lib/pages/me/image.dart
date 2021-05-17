import 'package:flutter/material.dart';
import 'package:garbage_classification/config/Config.dart';
import 'package:garbage_classification/generated/l10n.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';
import 'dart:io';

class ImagePickerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImagePickerState();
  }
}

class _ImagePickerState extends State<ImagePickerPage> {
  var _imgPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(LanguageChange.of(context).image_picker),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _ImageView(_imgPath),
              RaisedButton(
                onPressed: _takePhoto,
                child: Text(LanguageChange.of(context).take_photo),
              ),
              RaisedButton(
                onPressed: _openGallery,
                child: Text(LanguageChange.of(context).choose_picture),
              ),
            ],
          ),
        ));
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
      "tel": "17615322996",
      'image': await MultipartFile.fromFile(imgPath.path)
    });
    print("formData");
    var response =
        await Dio().post("${Config.home}profile/images", data: formData);
    print(response is Map);
  }
}
