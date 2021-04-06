import 'package:flutter/material.dart';
import 'package:garbage_classification/global_config.dart';
import 'Help&Feedback/All Questions.dart';
import 'Help&Feedback/Quick Help.dart';
import 'Help&Feedback/Feedback.dart';

class HelpFeedbackPage extends StatefulWidget {
  HelpFeedbackPage({Key key}) : super(key: key);

  _HelpFeedbackPageState createState() => _HelpFeedbackPageState();
}

class _HelpFeedbackPageState extends State<HelpFeedbackPage> {
  int _currentIndex = 0;
  List _pageList = [
    AllQuestionsPage(),
    QuickHelpPage(),
    FeedbackPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("Help & Feedback"),
        // ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          //配置对应的索引值选中
          onTap: (int index) {
            setState(() {
              //改变状态
              this._currentIndex = index;
            });
          },

          iconSize: 36.0,
          //图表的大小
          fixedColor: Colors.blue,
          //选中后的颜色
          type: BottomNavigationBarType.fixed,
          //配置底部Tabs可以有多个按钮，不然最多三个

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("AllQuestions"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("QuickHelp"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("Feedback"),
            ),
          ],
        ),
      ),
    );
  }
}
