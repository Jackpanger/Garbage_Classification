import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget{
  const FeedbackPage({Key key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback"),
      ),
      body: Text("Feedback"),
    );

  }

}