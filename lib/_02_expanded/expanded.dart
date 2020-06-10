import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ExpandedPageState();
}

class ExpandedPageState extends State<ExpandedPage> {
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
    return Container(
      height: 50,
      child: Row(
        children: [
          Container(width: 50, color: Colors.yellow),
          Expanded(
              child: Container(color: Colors.purple)
          ),
          Container(width: 50, color: Colors.yellow),
        ],
      ),
    );
  }

  Widget Row2() {
    return Container(
      height: 50,
      child: Row(
        children: [
          Container(width: 50, color: Colors.yellow),
          Expanded(
            flex: 2,
            child: Container(color: Colors.purple)
          ),
          Container(width: 50, color: Colors.yellow),
          Expanded(
            flex: 1,
            child: Container(color: Colors.purple)
          ),
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