import 'package:flutter/material.dart';
import '../../../config/global_config.dart';

class ServicesPage extends StatefulWidget {
  ServicesPage({Key key}) : super(key: key);
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: GlobalConfig.themeData,
      home: new Scaffold(
        appBar: AppBar(
          backgroundColor: GlobalConfig.themeColor,
          leading: new IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back, size: 25),
          ),
          title: Text("XXX Services"),
          centerTitle: true,
        ),
        body: Container(
          child: Stack(
            children: <Widget>[
          Container(
            width: 500,
            height: 1000,
              child: Image.asset("images/ServicesBackground.jpg", fit: BoxFit.cover),
          ),
              Align(
                alignment: Alignment(0,-0.8),
                child: Container(
                    margin: const EdgeInsets.only(bottom: 3.0),
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text(
                            "XXX Services",
                            style: new TextStyle(fontSize: GlobalConfig.fontSize),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        subtitle: new Container(
                          //margin: const EdgeInsets.only(top: 2.0),
                          child: new Text(
                            "Explore recently released XXX services",
                            style: new TextStyle(fontSize: GlobalConfig.fontSize-4.0),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )),
              ),
              Align(
                alignment: Alignment(0,-0.3),
                child: Container(
                    margin: const EdgeInsets.only(bottom: 3.0),
                    child: new Container(
                      child: new ListTile(
                        title: new Container(
                          child: new Text(
                            "————  No services available  ————",
                            style: new TextStyle(fontSize: GlobalConfig.fontSize-6.0),
                            textAlign: TextAlign.center,
                          ),
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