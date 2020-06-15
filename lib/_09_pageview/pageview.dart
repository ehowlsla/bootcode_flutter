import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PageViewState();
}

class PageViewState extends State<PageViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('09. PageView'),
        backgroundColor: Colors.redAccent,
      ),
      body: PageView(
//        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.blueAccent,
          ),
          Container(
            color: Colors.green,
          ),
        ],
      ),
    );
  }

}