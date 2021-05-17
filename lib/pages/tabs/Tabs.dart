import "package:flutter/material.dart";
import 'package:garbage_classification/generated/l10n.dart';
import '../home/Home.dart';
import '../category/Category.dart';
import '../me/Me.dart';
import '../../config/global_config.dart';

class Tabs extends StatefulWidget {
  // Map arguments;
  final index;
  Tabs({Key key, this.index=0}) : super(key: key);

  @override
  _TabState createState() => _TabState(index);
}

class _TabState extends State<Tabs> {
  int _currentIndex = 0;

  _TabState(index) {
    _currentIndex = index;
  }

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

        fixedColor: GlobalConfig.dark == true || GlobalConfig.themeColorsCheckWhite == true
            ? Colors.blue
            : GlobalConfig.themeColor,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: LanguageChange.of(context).search,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: LanguageChange.of(context).category,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: LanguageChange.of(context).me,
          ),
        ],
      ),
    );
  }
}
