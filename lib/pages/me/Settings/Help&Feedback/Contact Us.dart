import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:garbage_classification/generated/l10n.dart';
import '../../../../config/global_config.dart';
import 'package:garbage_classification/pages/me/Settings.dart';


class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: AppBar(
          backgroundColor: GlobalConfig.themeColor,
          leading: new IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Settings()));
            },
            icon: Icon(Icons.arrow_back, size: 25),
          ),
          title: Text(LanguageChange.of(context).contact_us),
          centerTitle: true,
        ),
        body: new Container(
          child: new ListView(
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(LanguageChange.of(context).we_chat_customer_service, style: TextStyle(fontSize: GlobalConfig.fontSize),),
                    ),
                    ListTile(
                      title: Text(LanguageChange.of(context).we_chat_account, style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(LanguageChange.of(context).qq_customer_service, style: TextStyle(fontSize: GlobalConfig.fontSize),),
                    ),
                    ListTile(
                      title: Text(LanguageChange.of(context).qq_account, style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(LanguageChange.of(context).e_mail_address, style: TextStyle(fontSize: GlobalConfig.fontSize),),
                    ),
                    ListTile(
                      title: Text(LanguageChange.of(context).mail_address, style: TextStyle(fontSize: GlobalConfig.fontSize-2.0),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
