import 'package:flutter/material.dart';
import '../../../config/global_config.dart';
import 'About/Development Team.dart';

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
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdownza.img.zz314.com%2Fnews%2Fyejie%2Fother-1021%2F2016-03-15%2F6a9f5c78c4ec4d76bb956177b1efda72.jpg&refer=http%3A%2F%2Fdownza.img.zz314.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1621109893&t=90938776ba14c95b8d85e1536c627229"),
                      fit: BoxFit.cover,
                    ),
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
                        "你算什么垃圾APP",
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
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => LanguagePage()));
                    },
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text("软件许可使用协议",
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
