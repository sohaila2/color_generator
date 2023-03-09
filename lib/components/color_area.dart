import 'package:flutter/material.dart';

class ColorArea extends StatelessWidget {

  final String randomColor;

  ColorArea({required this.randomColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: Border.all(width: 1,),
            color: Colors.white,
            borderRadius: BorderRadius.circular(25)),
        width: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: Text(
                randomColor,
                style: TextStyle(
                  fontSize: 18,),
              ),
            ),
            Icon(
              Icons.copy,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}