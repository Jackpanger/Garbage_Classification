import '../services/Storage.dart';
import 'dart:convert';

class FontSize{
  static getFontSize() async{
     List fontSize;
     try {
      List fontSizeData = json.decode(await Storage.getString('fontSize'));
      fontSize = fontSizeData;
    } catch (e) {
       fontSize = [];
    }
    return fontSize;
  }
  static getFontSizeState() async{
      var fontSize=await FontSize.getFontSize();
      if(fontSize.length>0&&fontSize[0]["fontSize"]!=""){
        return true;
      }
      return false;
  }
  static loginOut(){
    Storage.remove('fontSize');
  }

}