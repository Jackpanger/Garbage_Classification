import 'package:flutter/material.dart';
import 'package:garbage_classification/config/global_config.dart';

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
              title: Text("Software License Agreement"),
              centerTitle: true,
            ),
            body: ListView(children: <Widget>[
              new ListTile(
                  title: Container(
                      child: Text(
                        "一、软件使用协议")
                     )),
              new ListTile(
                  title: Container(
                    child: Text(
                        "       本协议是用户 (自然人、法人或社会团体)与XXXX公司之间关于“XXXXX”软件产品（以下简称“本软件产品”）的法律协议。一旦安装、复制或以其他方式使用本软件产品，即表示同意接受协议各项条件的约束。如果用户不同意协议的条件，请不要使用本软件产品。")
                       )),
              new ListTile(
                  title: Container(
                      child: Text(
                          "二、软件产品保护条款")
                  )),
              new ListTile(
                  title: Container(
                      child: Text(
                          " 1）本软件产品之著作权及其它知识产权等相关权利或利益（包括但不限于现已取得或未来可取得之著作权、专利权、商标权、营业秘密等）皆为XXXX公司所有。本软件产品受中华人民共和国版权法及国际版权条约和其他知识产权法及条约的保护。用户仅获得本软件产品的非排他性使用权。")
                  )),
              new ListTile(
                  title: Container(
                      child: Text(
                          " 2）用户不得：删除本软件及其他副本上一切关于版权的信息；对本软件进行反向工程，如反汇编、反编译等；")
                  )),
              new ListTile(
                  title: Container(
                      child: Text(
                          "3）本软件产品以现状方式提供，XXXXX公司不保证本软件产品能够或不能够完全满足用户需求，在用户手册、帮助文件、使用说明书等软件文档中的介绍性内容仅供用户参考，不得理解为对用户所做的任何承诺。XXXXX公司保留对软件版本进行升级，对功能、内容、结构、界面、运行方式等进行修改或自动更新的权利。")
                  )),
              new ListTile(
                  title: Container(
                      child: Text(
                          "4）为了更好地服务于用户，或为了向用户提供具有个性的信息内容的需要，本软件产品可能会收集、使用云端平台信息，但XXX公司承诺不向未经授权的第三方提供此类信息，以保护用户隐私。")
                  )),
              new ListTile(
                  title: Container(
                      child: Text(
                          "5）使用本软件产品由用户自己承担风险，在适用法律允许的最大范围内，XXXX公司在任何情况下不就因使用或不能使用本软件产品所发生的特殊的、意外的、非直接或间接的损失承担赔偿责任。即使已事先被告知该损害发生的可能性。")
                  )),
              new ListTile(
                  title: Container(
                      child: Text(
                          " 6）XXXX公司定义的信息内容包括：文字、数据、个人资料；本公司为用户提供的商业信息，所有这些内容受版权、商标权、和其它知识产权和所有权法律的保护。所以，用户只能在本公司授权下才能使用这些内容，而不能擅自复制、修改、编撰这些内容、或创造与内容有关的衍生产品。")
                  )),
              new ListTile(
                  title: Container(
                      margin: const EdgeInsets.only(bottom: 15.0),
                      child: Text(
                          "7）如果您未遵守本协议的任何一项条款，XXXX公司有权立即终止本协议，并保留通过法律手段追究责任。")
                  )),
              new ListTile(
                  title: Container(
                      margin: const EdgeInsets.only(bottom: 15.0),
                      child: Text(
                          "三、XXXX公司具有对以上各项条款内容的最终解释权和修改权。如用户对XXXX公司的解释或修改有异议，应当立即停止使用本软件产品。用户继续使用本软件产品的行为将被视为对XXXXX公司的解释或修改的接受。")
                  )),
              new ListTile(
                  title: Container(
                      margin: const EdgeInsets.only(bottom: 15.0),
                      child: Text(
                          "四、因本协议所发生的纠纷，双方同意按照中华人民共和国法律，由XXXX公司所在地的有管辖权的法院管辖。")
                  )),
              new ListTile(
                  title: Container(
                      child: Text(
                          "   ")
                  )),
            ])));
  }
}
