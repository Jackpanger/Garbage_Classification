import 'package:flutter/material.dart';
import '../../../config/global_config.dart';

class TextSizePage extends StatefulWidget {
  TextSizePage({Key key}) : super(key: key);

  _TextSizePageState createState() => _TextSizePageState();
}

class _TextSizePageState extends State<TextSizePage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: GlobalConfig.themeData,
        home: new Scaffold(
          appBar: AppBar(
            title: Text("Text Size"),
            centerTitle: true,
          ),
          body: new ListView(
            padding: EdgeInsets.only(top: 5),
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 1.0),
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {

                    },
                    child: new Container(
                      child: new ListTile(
                        // leading: new Container(
                        //
                        // ),
                        title: new Container(
                          child: new Text("大"),
                        ),
                      ),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 1.0),
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {

                    },
                    child: new Container(
                      child: new ListTile(
                        // leading: new Container(
                        //
                        // ),
                        title: new Container(
                          child: new Text("中"),
                        ),
                        trailing: new Container(
                          child: new Icon(
                            Icons.check, color: Colors.blue,
                          ),
                        ),
                      ),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 1.0),
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {

                    },
                    child: new Container(
                      child: new ListTile(
                        // leading: new Container(
                        //
                        // ),
                        title: new Container(
                          child: new Text("小"),
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
