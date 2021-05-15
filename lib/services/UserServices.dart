import '../services/Storage.dart';
import 'dart:convert';

class UserServices {
  static getUserInfo() async {
    List userinfo;
    try {
      List userInfoData = json.decode(await Storage.getString('userInfo'));
      userinfo = userInfoData;
    } catch (e) {
      userinfo = [];
    }
    return userinfo;
  }

  static getUserLoginState() async {
    var userInfo = await UserServices.getUserInfo();
    if (userInfo.length > 0 && userInfo[0]["username"] != "") {
      return true;
    }
    return false;
  }
  static getImageInfo() async {
    String imageInfo;
    try {
      imageInfo = json.decode(await Storage.getString('image'));
      // print(imageInfo);
    } catch (e) {
      imageInfo = "";
    }
    return imageInfo;
  }
  static getUserImageState() async {
    var imageInfo = await UserServices.getImageInfo();
    if (imageInfo.length > 0 && imageInfo!= "") {
      return true;
    }
    return false;
  }

  static loginOut() {
    Storage.remove('userInfo');
  }
}
