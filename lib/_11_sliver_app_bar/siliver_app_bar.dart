import 'dart:math';

import 'package:flutter/material.dart';

class SliverAppBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SliverAppBarPageState();
}

class SliverAppBarPageState extends State<SliverAppBarPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('11. SliverAppBar'),
            expandedHeight: 200,
            flexibleSpace: Container(
              height: 250,
              child: Image.asset(
                'assets/images/cat.png',
                fit: BoxFit.cover,
              ),
            ),
            floating: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => InkWell(
                  onTap: () => print(index),
                  child: Container(
                    height: 80,
                    color: randomColor(),
                    child: ListTile(),
                  ),
                ),
            ),
          )
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