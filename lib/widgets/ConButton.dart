import 'package:flutter/material.dart';

class ConButton extends StatelessWidget {

  final Color color;
  final String text;
  final Object cb;
  final double height;
  ConButton({Key key,this.color=Colors.black,this.text="按钮",this.cb=null,this.height=68}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.cb,
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        height: this.height,
        width: double.infinity,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            "$text",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
