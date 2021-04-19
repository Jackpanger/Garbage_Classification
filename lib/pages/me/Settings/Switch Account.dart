import 'package:flutter/material.dart';
import '../../../config/global_config.dart';

class SwitchAccountPage extends StatefulWidget {
  SwitchAccountPage({Key key}) : super(key: key);

  _SwitchAccountPageState createState() => _SwitchAccountPageState();
}

class _SwitchAccountPageState extends State<SwitchAccountPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: GlobalConfig.themeData,
        home: new Scaffold(
          appBar: AppBar(
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
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => LanguagePage()));
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
                          child: new Text("孤独的根号3"),
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
                              backgroundImage: new NetworkImage(
                                  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.qqzhi.com%2Fuploads%2F2019-01-20%2F022107555.jpg&refer=http%3A%2F%2Fimg.qqzhi.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1621073255&t=1de8c011163ef98f73558fc7c2011ce9"),
                              radius: 20.0),
                        ),
                        title: new Container(
                          //margin: const EdgeInsets.only(bottom: 2.0),
                          child: new Text("甜甜的草莓味"),
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
                              backgroundImage: new NetworkImage(
                                  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.17qq.com%2Fimg_qqtouxiang%2F84616756.jpeg&refer=http%3A%2F%2Fwww.17qq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1621073632&t=da2d9c7fa0697d416103b070db1cbd45"),
                              radius: 20.0),
                        ),
                        title: new Container(
                          //margin: const EdgeInsets.only(bottom: 2.0),
                          child: new Text("祖安网友"),
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
                              backgroundImage: new NetworkImage(
                                  "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1933067578,1207339540&fm=26&gp=0.jpg"),
                              radius: 20.0),
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
