import 'dart:math';

import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TablePageState();
}

class TablePageState extends State<TablePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('10. Table'),
        backgroundColor: Colors.redAccent,
      ),
      body: Table(

        defaultVerticalAlignment: TableCellVerticalAlignment.top,
//        defaultColumnWidth: FractionColumnWidth(.3),
//        columnWidths: {1: FractionColumnWidth(.4)},
        defaultColumnWidth: IntrinsicColumnWidth(flex: 1),
        children: [
          TableRow(

            children: [
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 50),
            ]
          ),
          TableRow(
            children: [
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
            ]
          ),
          TableRow(
              children: [
                Container(color: randomColor(), height: 100),
                Container(color: randomColor(), height: 100),
              ]
          ),
          TableRow(
              children: [
                Container(color: randomColor(), height: 100),
                Container(color: randomColor(), height: 100),
              ]
          ),
          TableRow(
              children: [
                Container(color: randomColor(), height: 100),
                Container(color: randomColor(), height: 100),
              ]
          ),
          TableRow(
              children: [
                Container(color: randomColor(), height: 100),
                Container(color: randomColor(), height: 100),
              ]
          ),
          TableRow(
              children: [
                Container(color: randomColor(), height: 100),
                Container(color: randomColor(), height: 100),
              ]
          ),
          TableRow(
              children: [
                Container(color: randomColor(), height: 100),
                Container(color: randomColor(), height: 100),
              ]
          ),

        ],
      ),
    );
  }

  Color randomColor() {
    final random = Random();
    return Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
  }
}