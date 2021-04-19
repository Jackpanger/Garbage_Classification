import 'package:flutter/material.dart';
import 'file:///D:/FlutterProject/garbage_classification/lib/config/global_config.dart';
import 'Help&Feedback/Hot Questions.dart';
import 'Help&Feedback/Contact Us.dart';
import 'Help&Feedback/Feedback.dart';

class HelpFeedbackPage extends StatefulWidget {
  HelpFeedbackPage({Key key}) : super(key: key);

  _HelpFeedbackPageState createState() => _HelpFeedbackPageState();
}

class _HelpFeedbackPageState extends State<HelpFeedbackPage> {
  int _currentIndex = 0;
  List _pageList = [
    HotQuestionsPage(),
    FeedbackPage(),
    ContactUsPage(),
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
              icon: Icon(Icons.help_center_outlined),
              title: Text("Hot Questions"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.feedback_outlined),
              title: Text("Feedback"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_page_outlined),
              title: Text("Contact Us"),
            ),
          ],
        ),
      ),
    );
  }
}
