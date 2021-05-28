import 'package:flutter/material.dart';
import 'package:garbage_classification/config/global_config.dart';
import 'package:garbage_classification/generated/l10n.dart';

class MyworkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: GlobalConfig.themeData,
        home: Scaffold(
          appBar: AppBar(
            title: Text(LanguageChange.of(context).my_work),
            centerTitle: true,
            backgroundColor: GlobalConfig.themeColor,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_rounded),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: Center(child: Text(LanguageChange.of(context).to_be_developed)),
        ));
  }
}
