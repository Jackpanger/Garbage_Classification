import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker_fork/flutter_cupertino_date_picker_fork.dart';
import 'package:date_format/date_format.dart';

class Birthday extends StatefulWidget {
  String arguments;

  Birthday({Key key, this.arguments}) : super(key: key);

  @override
  _BirthdayState createState() => _BirthdayState(arguments: this.arguments);
}

class _BirthdayState extends State<Birthday> {
  String arguments;

  _BirthdayState({this.arguments});

  DateTime _dateTime = DateTime.now();

  _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      onMonthChangeStartWithFirstDate: true,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
      ),
      minDateTime: DateTime.parse("1980-01-01"),
      maxDateTime: DateTime.parse("2021-05-05"),
      initialDateTime: _dateTime,
      dateFormat: "yyyy-MMM-dd",
      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      // onChange: (dateTime, List<int> index) {
      //   setState(() {
      //     _dateTime = dateTime;
      //   });
      // },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('出生日期'),
        ),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  '选择出生日期',
                  style: TextStyle(
                    fontSize: 60.0,
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Row(
                    children: <Widget>[
                      Text(
                        '${formatDate(_dateTime, [yyyy, '年', mm, '月', 'dd'])}',
                        style: TextStyle(fontSize: 35),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 40.0,
                        color: Colors.green,
                      )
                    ],
                  ),
                  onTap: _showDatePicker,
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                    child: Text('确定'),
                    onPressed: () {
                      Navigator.pop(context, '${formatDate(_dateTime, [yyyy, '年', mm, '月', 'dd'])}');
                    })
              ],
            )
          ],
        )));
  }
}
