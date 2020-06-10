import 'dart:math';

import 'package:flutter/material.dart';

class OpacityPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OpacityPageState();
}

class OpacityPageState extends State<OpacityPage> {

  double _opacity = 1.0;

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
                child: AnimatedOpacity(
                  opacity: _opacity,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.fastOutSlowIn,
                  child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.blueAccent,
                  ),
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
    setState(() {
      _opacity = _opacity == 1.0 ? 0.1 : 1.0;
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