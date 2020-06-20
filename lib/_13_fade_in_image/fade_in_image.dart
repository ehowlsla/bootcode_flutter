import 'dart:math';

import 'package:flutter/material.dart';

class FadeInImagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FadeInImagePageState();
}

class FadeInImagePageState extends State<FadeInImagePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('13. FadeInImage'),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: Center(
          child: FadeInImage.assetNetwork(
              height: 200,
//              fadeInCurve: Curves.bounceIn,
              fadeInDuration: Duration(seconds: 1),
              placeholder: 'assets/images/cat.png',
              image: 'https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png',
          ),
        ),
      ),
    );
  }

}