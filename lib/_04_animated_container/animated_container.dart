import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AnimatedContainerPageState();
}

class AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _width = 300;
  double _height = 300;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Material(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Center(
                child: AnimatedContainer(
                  width: _width,
                  height: _height,
                  decoration:  BoxDecoration(color: _color, borderRadius: _borderRadius),
                  duration: Duration(milliseconds: 300),
                  curve: Curves.fastOutSlowIn,
                ),
              ),
            ),
            Container(
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ToggleButton(),
                  BackButton(),
                ],
              )
            )
          ],
        ),
      ),

    );
  }

  changeRandomValue() {
    final random = Random();

    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromARGB(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }

  Widget ToggleButton() {
    return FlatButton(
      child: Container(
        width: 110,
        height: 40,
        color: Colors.green,
        child: Align(
          alignment: Alignment.center,
          child: Text('Toggle', style: TextStyle(color: Colors.white)),
        ),
      ),
      onPressed: () => changeRandomValue(),
    );
  }

  Widget BackButton() {
    return FlatButton(
      child: Container(
        width: 110,
        height: 40,
        color: Colors.blueAccent,
        child: Align(
          alignment: Alignment.center,
          child: Text('back', style: TextStyle(color: Colors.white)),
        ),
      ),
      onPressed: () => Navigator.pop(context),
    );
  }
}