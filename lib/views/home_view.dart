import 'dart:math';
import 'package:color_generator/components/color_area.dart';
import 'package:color_generator/components/my_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Color colorCode = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorCode,
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Random Color Generator',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ColorArea(randomColor: '#${colorCode.value.toRadixString(16)}'),
            const SizedBox(
              height: 12,
            ),
            MyButton(
              text: 'Generate Color',
              funcation: () {
                generateRandomColor();
              },
            ),
          ],
        ),
      ),
    );
  }
  generateRandomColor() {
    final Random random = Random();
    Color tmpColor = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
    setState(() {
      colorCode = tmpColor;
    });
  }
}
