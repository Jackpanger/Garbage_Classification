import 'package:flutter/material.dart';
import '../../../config/global_config.dart';
import 'About/Development Team.dart';
import 'About/Software License Agreement.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);

  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  _alertDialog() async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Hint!"),
            content: Text("No Updates"),
            actions: <Widget>[
              FlatButton(
                  child: Text("OK"),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          );
        });
  }

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
          title: Text("About"),
          centerTitle: true,
        ),
        body: new Container(
          child: new ListView(
            padding: EdgeInsets.only(top: 10),
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(190, 60, 190, 0),
                child: Container(
                  height: 100,
                  // width: 300,
                  decoration: BoxDecoration(
                    //color: Colors.blue,
                    //borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image:AssetImage("images/search.png"),
                        fit: BoxFit.cover)
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3.0),
                child: new TextButton(
                    child: new Container(
                  child: new ListTile(
                    title: new Container(
                      child: new Text(
                        "Trash Assistant",
                        style: new TextStyle(fontSize: GlobalConfig.fontSize),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    subtitle: new Container(
                      //margin: const EdgeInsets.only(top: 2.0),
                      child: new Text(
                        "Version 1.0.1",
                        style: new TextStyle(fontSize: GlobalConfig.fontSize),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                )),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3.0),
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: _alertDialog,
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text("Check for Updates",
                              style: new TextStyle(
                                  fontSize: GlobalConfig.fontSize)),
                        ),
                        trailing: new Container(
                          child: new Icon(Icons.arrow_forward,
                              color: GlobalConfig.arrowColor),
                        ),
                      ),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3.0),
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DevelopmentTeamPage()));
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text("Development Team",
                              style: new TextStyle(
                                  fontSize: GlobalConfig.fontSize)),
                        ),
                        trailing: new Container(
                          child: new Icon(Icons.arrow_forward,
                              color: GlobalConfig.arrowColor),
                        ),
                      ),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3.0),
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => softwareLicenseAgreementPage()));
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text("Software License Agreement",
                              style: new TextStyle(
                                  fontSize: GlobalConfig.fontSize)),
                        ),
                        trailing: new Container(
                          child: new Icon(Icons.arrow_forward,
                              color: GlobalConfig.arrowColor),
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
