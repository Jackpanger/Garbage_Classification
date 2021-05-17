import 'package:garbage_classification/services/Storage.dart';
import 'dart:convert';

class CommonSearch {
  static setCommonSearch(keywords) async {
    /*
          1、获取本地存储里面的数据  (searchList)

          2、判断本地存储是否有数据

              2.1、如果有数据

                    1、读取本地存储的数据
                    2、判断本地存储中有没有当前数据，
                        如果有不做操作、
                        如果没有当前数据,本地存储的数据和当前数据拼接后重新写入


              2.2、如果没有数据

                    直接把当前数据放在数组中写入到本地存储


      */

    try {
      List searchListData =
          json.decode(await Storage.getString('commonSearch'));
      print(searchListData);
      var hasData = searchListData.any((v) {
        return v == keywords;
      });
      if (!hasData) {
        searchListData.add(keywords);
        await Storage.setString('commonSearch', json.encode(searchListData));
      }
    } catch (e) {
      List tempList;
      tempList.add(keywords);
      await Storage.setString('commonSearch', json.encode(tempList));
    }
  }

  static getCommonSearch() async {
    try {
      List searchListData =
          json.decode(await Storage.getString('commonSearch'));
      return searchListData;
    } catch (e) {
      return [];
    }
  }

  static clearCommonSearch() async {
    await Storage.remove('commonSearch');
  }

  static removeCommonSearch(keywords) async {
    List searchListData = json.decode(await Storage.getString('commonSearch'));
    searchListData.remove(keywords);
    await Storage.setString('commonSearch', json.encode(searchListData));
  }
}
