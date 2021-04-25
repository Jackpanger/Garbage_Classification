import 'package:flutter/material.dart';
import 'package:garbage_classification/config/global_config.dart';

class SwitchAccountPage extends StatefulWidget {
  SwitchAccountPage({Key key}) : super(key: key);

  _SwitchAccountPageState createState() => _SwitchAccountPageState();
}

class _SwitchAccountPageState extends State<SwitchAccountPage> {
  bool checka = true;
  bool checkb = true;
  bool checkc = true;

  bool currentindexa = true;
  bool currentindexb = false;
  bool currentindexc = false;

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
            title: Text("Switch Account"),
            centerTitle: true,
          ),
          body: new ListView(
            padding: EdgeInsets.only(top: 5),
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 3.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      setState(() {
                        if (checka) {
                          currentindexa = true;
                          currentindexb = false;
                          currentindexc = false;
                        }
                      });
                    },
                    child: new Container(
                      child: new ListTile(
                        leading: new Container(
                          child: new CircleAvatar(
                              backgroundImage: new NetworkImage(
                                  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.17qq.com%2Fimg_qqtouxiang%2F88768555.jpeg&refer=http%3A%2F%2Fwww.17qq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1621072830&t=066c1dde754ac4c073b3eafa83bf81c6"),
                              radius: 20.0),
                        ),
                        title: new Container(
                          child: new Text(
                            "Solitary square root of three",
                            style: new TextStyle(
                              //fontSize: GlobalConfig.fontSize,
                            ),
                          ),
                        ),
                        trailing: Visibility(
                          visible: currentindexa,
                          child: new Icon(
                            Icons.check,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      setState(() {
                        if (checka) {
                          currentindexa = false;
                          currentindexb = true;
                          currentindexc = false;
                        }
                      });
                    },
                    child: new Container(
                      child: new ListTile(
                        leading: new Container(
                          child: new CircleAvatar(
                              backgroundImage: new NetworkImage(
                                  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.qqzhi.com%2Fuploads%2F2019-01-20%2F022107555.jpg&refer=http%3A%2F%2Fimg.qqzhi.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1621073255&t=1de8c011163ef98f73558fc7c2011ce9"),
                              radius: 20.0),
                        ),
                        title: new Container(
                          //margin: const EdgeInsets.only(bottom: 2.0),
                          child: new Text("Sweet strawberry flavor"),
                        ),
                        trailing: Visibility(
                          visible: currentindexb,
                          child: new Icon(
                            Icons.check,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      setState(() {
                        if (checka) {
                          currentindexa = false;
                          currentindexb = false;
                          currentindexc = true;
                        }
                      });
                    },
                    child: new Container(
                      child: new ListTile(
                        leading: new Container(
                          child: new CircleAvatar(
                              backgroundImage: new NetworkImage(
                                  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.17qq.com%2Fimg_qqtouxiang%2F84616756.jpeg&refer=http%3A%2F%2Fwww.17qq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1621073632&t=da2d9c7fa0697d416103b070db1cbd45"),
                              radius: 20.0),
                        ),
                        title: new Container(
                          //margin: const EdgeInsets.only(bottom: 2.0),
                          child: new Text("Keyboard warrior"),
                        ),
                        trailing: Visibility(
                          visible: currentindexc,
                          child: new Icon(
                            Icons.check,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3.0),
                width: MediaQuery.of(context).size.width,
                color: GlobalConfig.rowColor,
                child: new TextButton(
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => LanguagePage()));
                    },
                    child: new Container(
                      child: new ListTile(
                        leading: new Container(
                          child: new CircleAvatar(
                              child: Icon(Icons.add), radius: 20.0),
                        ),
                        title: new Container(
                          child: new Text("Add or Register an Account"),
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
