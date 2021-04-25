import 'package:flutter/material.dart';

class ProfilePhoto extends StatefulWidget {
  ProfilePhoto({Key key}) : super(key: key);

  @override
  _ProfilePhotoState createState() => _ProfilePhotoState();
}

class _ProfilePhotoState extends State<ProfilePhoto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('你的头像'),
        ),
        body: Container(
          child: Text('头像'),
        ),
      ),
    );
  }
}
