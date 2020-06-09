import 'package:flutter/material.dart';

class SafeAreaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SafeAreaPageState();
}

class SafeAreaPageState extends State<SafeAreaPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

//    return SafeArea(
//      child: Container(color: Colors.green),
//    );

    return SafeArea(
      child: Material(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Here is SafeArea'),
              SizedBox(height: 10),
              FlatButton(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}