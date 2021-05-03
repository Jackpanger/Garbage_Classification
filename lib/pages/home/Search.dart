import 'package:flutter/material.dart';
import 'package:garbage_classification/pages/category/res/form1.dart';
import 'package:garbage_classification/pages/category/res/form2.dart';
import 'package:garbage_classification/pages/category/res/form3.dart';
import 'package:garbage_classification/pages/category/res/form4.dart';
import 'garbageInfo.dart';
import 'kind.dart';

const recentSuggest = [];

class SearchBarDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = "",
      )
    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    var result;
    for (int i = 0; i < form1.length; i++) {
      if (query == form1[i]['title']) {
        result = "Residual waste";
      }
    }
    for (int i = 0; i < form2.length; i++) {
      if (query == form2[i]['title']) {
        result = "Wet waste";
      }
    }
    for (int i = 0; i < form3.length; i++) {
      if (query == form3[i]['title']) {
        result = "Recyclable waste";
      }
    }
    for (int i = 0; i < form4.length; i++) {
      if (query == form4[i]['title']) {
        result = "other waste";
      }
    }
    if (result == null) {
      result = "Not found";
    }
    print(result);
    return Scaffold(
      body: garbageInfo(
          '隐形眼镜',
          '3',
          '干垃圾即其它垃圾，指除可回收物、有害垃圾、厨余垃圾（湿垃圾）以外的其它生活废弃物.',
          '常见包括砖瓦陶瓷、渣土、卫生间废纸、猫砂、污损塑料、毛发、硬壳、一次性制品、灰土、瓷器碎片等难以回收的废弃物',
          '尽量沥干水分；难以辨识类别的生活垃圾都可以投入干垃圾容器内'),
    );
    //   Center(
    //   child: Text(result,style:TextStyle(fontSize: 24)),
    // );
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () => close(context, null));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionsList = query.isEmpty
        ? recentSuggest
        : searchList.where((input) => input.startsWith(query)).toList();

    return ListView.builder(
        itemCount: suggestionsList.length,
        itemBuilder: (context, index) => ListTile(
              title: RichText(
                //富文本
                text: TextSpan(
                    text: suggestionsList[index].substring(0, query.length),
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: suggestionsList[index].substring(query.length),
                          style: TextStyle(color: Colors.grey))
                    ]),
              ),
              onTap: () {
                query = suggestionsList[index];
                buildResults(context);
              },
            ));
  }

  Widget garbageInfo(
    String name,
    String type,
    String explain,
    String contain,
    String tip,
  ) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
            body: Column(
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Image.asset('images/search.png', fit: BoxFit.cover),
                      width: 200,
                      height: 200,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 20.0,
                    ),
                    Text('Name:  $name'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Type:  $type'),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      '  Comment：',
                      style: TextStyle(fontSize: 25.0, color: Colors.green),
                    )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Expanded(child: Text('$explain')),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      '  Same type：',
                      style: TextStyle(fontSize: 25.0, color: Colors.green),
                    )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Expanded(child: Text('$contain')),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      '  Dispose ：',
                      style: TextStyle(fontSize: 25.0, color: Colors.green),
                    )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Expanded(child: Text('$tip')),
                  ],
                ),
              ],
            )));
  }
}
