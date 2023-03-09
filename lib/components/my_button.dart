import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final text;
  final funcation;

  MyButton({this.text, this.funcation});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: funcation,
      child: Container(
        height: 70,
        width: 255,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 45),
        decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black
        ) ,
        child: Text(text,
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500
            )
        ),
      ),
    );
  }
}