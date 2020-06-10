import 'package:flutter/material.dart';

class WrapPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WrapPageState();
}

class WrapPageState extends State<WrapPage> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Material(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row1(),
              Row2(),
              BackButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget Row1() {
    double size = 95;
    return Container(
      height: 220,
      color: Colors.black12,
      alignment: Alignment.center,
      child: Wrap(
        children: [
          Container(width: size, height: size, color: Colors.yellow),
          Container(width: size, height: size, color: Colors.red),
          Container(width: size, height: size, color: Colors.green),
          Container(width: size, height: size, color: Colors.blueAccent),
          Container(width: size, height: size, color: Colors.black),
        ],
      ),
    );
  }

  Widget Row2() {
    double size = 100;
    return Container(
      height: 220,
      color: Colors.black12,
      alignment: Alignment.center,
      child: Wrap(
        direction: Axis.vertical,
        children: [
          Container(width: size, height: size, color: Colors.yellow),
          Container(width: size, height: size, color: Colors.red),
          Container(width: size, height: size, color: Colors.green),
          Container(width: size, height: size, color: Colors.blueAccent),
          Container(width: size, height: size, color: Colors.black),
        ],
      ),
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