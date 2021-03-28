import 'package:flutter/material.dart';
import 'package:garbage_classification/global_config.dart';

class CategoryPage extends StatefulWidget{
  @override
  _CategoryState createState() => _CategoryState();

}
class _CategoryState extends State<CategoryPage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: GlobalConfig.themeData,
      home: Scaffold(
          appBar: AppBar(title: Text("Category"), centerTitle: true),
      ),
    );
  }


}