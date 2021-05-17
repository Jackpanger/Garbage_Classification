import 'package:flutter/material.dart';
import 'package:garbage_classification/generated/l10n.dart';
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
          title: Text(LanguageChange.of(context).feedback),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[

              Row(
                children: <Widget>[
                  Text(LanguageChange.of(context).we_chat, style: new TextStyle(fontSize: GlobalConfig.fontSize)),
                  Radio(
                    value: 1,
                    onChanged: _contactWay,
                    groupValue: this.contactWay,
                  ),
                  SizedBox(width: 20,),
                  Text(LanguageChange.of(context).qq, style: new TextStyle(fontSize: GlobalConfig.fontSize)),
                  Radio(
                    value: 2,
                    onChanged: _contactWay,
                    groupValue: this.contactWay,
                  ),
                  SizedBox(width: 20,),
                  Text(LanguageChange.of(context).e_mail, style: new TextStyle(fontSize: GlobalConfig.fontSize)),
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
                  hintText: LanguageChange.of(context).please_contact,
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
                    hintText: LanguageChange.of(context).please_feedback,
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
                  child: Text(LanguageChange.of(context).submit_information),
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
