import 'package:flutter/material.dart';
import '../../config/global_config.dart';
import 'Search.dart';

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
        appBar: AppBar(title: Text("Search"),centerTitle: true,),
        body: Center(
          child: InkWell(
            onTap: () {
              showSearch(context: context, delegate: SearchBarDelegate());
            },
            child: Container(
              height: 178,
              width: 150,
              child: ListView(
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child:
                          Image.asset("images/search.jpeg", fit: BoxFit.cover),
                    ),
                    Container(
                        child: Text(
                      'Search',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24),
                    ))
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
