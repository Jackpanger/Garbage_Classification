import "package:flutter/material.dart";
import '../home/Home.dart';
import '../category/Category.dart';
import '../me/Me.dart';
import 'package:garbage_classification/global_config.dart';

class Tabs extends StatefulWidget {
  @override
  _TabState createState() => _TabState();
}

class _TabState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [
    Homepage(),
    CategoryPage(),
    Me(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        backgroundColor: GlobalConfig.cardBackgroundColor,
        unselectedItemColor: GlobalConfig.barColor,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
