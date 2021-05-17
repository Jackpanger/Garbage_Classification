import 'package:flutter/material.dart';
import 'package:garbage_classification/generated/l10n.dart';

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
          title: Text(LanguageChange.of(context).profile),
        ),
        body: Container(
          child: Text(LanguageChange.of(context).profile),
        ),
      ),
    );
  }
}
