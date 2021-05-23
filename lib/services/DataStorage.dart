import 'package:garbage_classification/services/Storage.dart';
import 'dart:convert';

class DataStorage {
  static getDataInfoRes() async {
    List dataRes;
    try {
      List dataResData = json.decode(await Storage.getString('data_res'));
      dataRes = dataResData;
    } catch (e) {
      dataRes = [];
    }
    return dataRes;
  }

  static getDataInfoWet() async {
    List dataWet;
    try {
      List dataWetData = json.decode(await Storage.getString('data_wet'));
      dataWet = dataWetData;
    } catch (e) {
      dataWet = [];
    }
    return dataWet;
  }

  static getDataInfoRec() async {
    List dataRec;
    try {
      List dataRecData = json.decode(await Storage.getString('data_rec'));
      dataRec = dataRecData;
    } catch (e) {
      dataRec = [];
    }
    return dataRec;
  }

  static getDataInfoOther() async {
    List dataOther;
    try {
      List dataOtherData = json.decode(await Storage.getString('data_other'));
      dataOther = dataOtherData;
    } catch (e) {
      dataOther = [];
    }
    return dataOther;
  }
}
