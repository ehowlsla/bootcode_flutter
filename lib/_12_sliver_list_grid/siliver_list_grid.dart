import 'dart:math';

import 'package:flutter/material.dart';

class SliverListGridPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SliverListGridPageState();
}

class SliverListGridPageState extends State<SliverListGridPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('12. SliverList & SliverGrid'),
        backgroundColor: Colors.redAccent,
      ),
      body:   CustomScrollView(
        slivers: [
          SliverGrid.count(
            children: [
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
              Container(color: randomColor(), height: 100),
            ],
            crossAxisCount: 4,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
                [
                  Container(color: randomColor(), height: 100,),
                  Container(color: randomColor(), height: 100,),
                  Container(color: randomColor(), height: 100,),
                  Container(color: randomColor(), height: 100,),
                  Container(color: randomColor(), height: 100,),
                  Container(color: randomColor(), height: 100,),
                  Container(color: randomColor(), height: 100,),
                ]
            ),
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