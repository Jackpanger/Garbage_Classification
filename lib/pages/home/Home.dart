import 'package:flutter/material.dart';
import 'package:garbage_classification/global_config.dart';

const searchList = ['plastic', 'bread', 'noodles', 'fish'];

const recentSuggest = [
  'plastic',
  'fish',
];

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: GlobalConfig.themeData,
        home: new Scaffold(
          appBar: AppBar(
            title: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20.0),
                padding: EdgeInsets.only(bottom: 10.0, top: 10.0),
                color: Colors.grey,
                child: Text(
                  'Search',
                  textAlign: TextAlign.center,
                )),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: SearchBarDelegate());
                },
              )
            ],
          ),
        ));
  }
}

class SearchBarDelegate extends SearchDelegate<String> {
  //清空按钮
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = "", //搜索值为空
      )
    ];
  }

  //返回上级按钮
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () => close(context, null) //点击时关闭整个搜索页面
        );
  }

  //搜到到内容后的展现
  @override
  Widget buildResults(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  //设置推荐
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
            ));
  }
}
