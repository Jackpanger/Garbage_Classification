import 'package:flutter/material.dart';

class GarbageInfo extends StatefulWidget {
  Map arguments;
  GarbageInfo({Key key, this.arguments}) : super(key: key);

  @override
  _GarbageInfoState createState() => _GarbageInfoState();
}

class _GarbageInfoState extends State<GarbageInfo> {
  Map arguments;
  // String name = '隐形眼镜';
  // String type = '3';
  // String explain = '干垃圾即其它垃圾，指除可回收物、有害垃圾、厨余垃圾（湿垃圾）以外的其它生活废弃物。';
  // String contain = '常见包括砖瓦陶瓷、渣土、卫生间废纸、猫砂、污损塑料、毛发、硬壳、一次性制品、灰土、瓷器碎片等难以回收的废弃物';
  // String tip = '尽量沥干水分；难以辨识类别的生活垃圾都可以投入干垃圾容器内';
  String name;
  String type;
  String explain;
  String contain;
  String tip;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name = widget.arguments['name'];
    type = widget.arguments['type'];
    explain = widget.arguments['explain'];
    contain = widget.arguments['contain'];
    tip = widget.arguments['tip'];
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
            appBar: AppBar(
              title: Text('详细信息'),
            ),
            body: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 70.0,
                    ),
                    Text(
                      '物品详情:',
                      style: TextStyle(fontSize: 40.0, color: Colors.blue),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Image.asset('images/a.jpg', fit: BoxFit.cover),
                      width: 300,
                      height: 250,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('物品名称:  $name'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('类型:  $type'),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      '  类型注释：',
                      style: TextStyle(fontSize: 25.0, color: Colors.green),
                    )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(child: Text('$explain')),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      '  同类垃圾：',
                      style: TextStyle(fontSize: 25.0, color: Colors.green),
                    )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(child: Text('$contain')),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Text(
                      '  处理方法：',
                      style: TextStyle(fontSize: 25.0, color: Colors.green),
                    )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(child: Text('$tip')),
                  ],
                ),
              ],
            )));
  }
}
