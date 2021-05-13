import 'package:flutter/material.dart';
import '../../../../config/global_config.dart';
import 'package:garbage_classification/pages/me/Settings.dart';

class FeedbackPage extends StatefulWidget {
  FeedbackPage({Key key}) : super(key: key);

  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {

  String contactInformation;
  String feedback;
  int contactWay = 1;

  void _contactWay(vaule){
    setState(() {
      this.contactWay=vaule;
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
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Settings()));
            },
            icon: Icon(Icons.arrow_back, size: 25),
          ),
          title: Text("Feedback"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[

              Row(
                children: <Widget>[
                  Text("微信", style: new TextStyle(fontSize: GlobalConfig.fontSize)),
                  Radio(
                    value: 1,
                    onChanged: _contactWay,
                    groupValue: this.contactWay,
                  ),
                  SizedBox(width: 20,),
                  Text("QQ", style: new TextStyle(fontSize: GlobalConfig.fontSize)),
                  Radio(
                    value: 2,
                    onChanged: _contactWay,
                    groupValue: this.contactWay,
                  ),
                  SizedBox(width: 20,),
                  Text("邮箱", style: new TextStyle(fontSize: GlobalConfig.fontSize)),
                  Radio(
                    value: 3,
                    onChanged: _contactWay,
                    groupValue: this.contactWay,
                  ),
                ],
              ),

              SizedBox(height: 20,),

              TextField(
                decoration: InputDecoration(
                  hintText: "请输入联系方式",
                  //labelText: "请输入联系方式",
                  border: OutlineInputBorder()
                ),
                onChanged: (value){
                  setState(() {
                    this.contactInformation=value;
                  });
                },
              ),

              SizedBox(height: 20,),

              TextField(
                maxLines: 6,
                decoration: InputDecoration(
                    hintText: "请输入反馈内容",
                    //labelText: "请输入联系方式",
                    border: OutlineInputBorder()
                ),
                onChanged: (value){
                  setState(() {
                    this.feedback=value;
                  });
                },
              ),

              SizedBox(height: 20,),

              Container(
                width: double.infinity,
                height: 40,
                child: RaisedButton(
                  child: Text("提交信息"),
                  onPressed: (){
                    print(this.contactWay);
                    print(this.contactInformation);
                    print(this.feedback);
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
              ),

            ],
          ),
        )
      ),
    );
  }
}
