import 'package:flutter/material.dart';

class AllQuestionsPage extends StatelessWidget{
  const AllQuestionsPage({Key key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Questions"),
      ),
      body: Text("All Questions"),
    );

  }

}