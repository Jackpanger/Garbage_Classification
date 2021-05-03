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
          title: Text('Profile'),
        ),
        body: Container(
          child: Text('Profile'),
        ),
      ),
    );
  }
}
