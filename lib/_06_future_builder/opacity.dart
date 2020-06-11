import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:requests/requests.dart';

class FutureBuilderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FutureBuilderPageState();
}

class FutureBuilderPageState extends State<FutureBuilderPage> {
//  double _opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return FutureBuilder(
        future: Requests.get('https://google.com'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedOpacity(
                    opacity: 1.0,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.fastOutSlowIn,
                    child: Container(
                      width: 300,
                      height: 300,
                      color: Colors.blueAccent,
                    )
                ),
                SizedBox(height: 10),
                BackButton()
              ],
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
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
