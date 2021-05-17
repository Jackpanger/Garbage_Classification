import 'package:flutter/material.dart';
import 'package:garbage_classification/config/global_config.dart';
import 'package:garbage_classification/generated/l10n.dart';

class softwareLicenseAgreementPage extends StatefulWidget {
  softwareLicenseAgreementPage({Key key}) : super(key: key);

  _softwareLicenseAgreementPageState createState() =>
      _softwareLicenseAgreementPageState();
}

class _softwareLicenseAgreementPageState
    extends State<softwareLicenseAgreementPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: GlobalConfig.themeData,
        home: new Scaffold(
            appBar: AppBar(
              backgroundColor: GlobalConfig.themeColor,
              leading: new IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back, size: 25),
              ),
              title: Text(LanguageChange.of(context).software_license_agreement),
              centerTitle: true,
            ),
            body: ListView(children: <Widget>[
              new ListTile(
                  title: Container(
                      child: Text(
                          LanguageChange.of(context).sla_one)
                     )),
              new ListTile(
                  title: Container(
                    child: Text(
                        LanguageChange.of(context).sla_two)
                       )),
              new ListTile(
                  title: Container(
                      child: Text(
                          LanguageChange.of(context).sla_three)
                  )),
              new ListTile(
                  title: Container(
                      child: Text(
                          LanguageChange.of(context).sla_four)
                  )),
              new ListTile(
                  title: Container(
                      child: Text(
                          LanguageChange.of(context).sla_five)
                  )),
              new ListTile(
                  title: Container(
                      child: Text(
                          LanguageChange.of(context).sla_six)
                  )),
              new ListTile(
                  title: Container(
                      child: Text(
                          LanguageChange.of(context).sla_seven)
                  )),
              new ListTile(
                  title: Container(
                      child: Text(
                          LanguageChange.of(context).sla_eight)
                  )),
              new ListTile(
                  title: Container(
                      child: Text(
                          LanguageChange.of(context).sla_nine)
                  )),
              new ListTile(
                  title: Container(
                      margin: const EdgeInsets.only(bottom: 15.0),
                      child: Text(
                          LanguageChange.of(context).sla_ten)
                  )),
              new ListTile(
                  title: Container(
                      margin: const EdgeInsets.only(bottom: 15.0),
                      child: Text(
                          LanguageChange.of(context).sla_eleven)
                  )),
              new ListTile(
                  title: Container(
                      margin: const EdgeInsets.only(bottom: 15.0),
                      child: Text(
                          LanguageChange.of(context).sla_twelve)
                  )),
              new ListTile(
                  title: Container(
                      child: Text(
                          "   ")
                  )),
            ])));
  }
}
