import 'package:flutter/material.dart';

class FabPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FabPageState();
}

class FabPageState extends State<FabPage> {

  int _index = 0;
  List<FloatingActionButtonLocation> _fabLocations = [
    FloatingActionButtonLocation.startDocked,
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.endDocked,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('07. Fab'),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.yellow,
        child: Container(height: 50.0),
      ),
      floatingActionButtonLocation: _fabLocations[_index],
      floatingActionButton: FloatingActionButton(
        // child: Text('Click'),
        child: Icon(Icons.add),
        onPressed: () => changeLocation(),
      ),
    );
  }


  void changeLocation() {
    setState(() {
      _index = (_index + 1) % _fabLocations.length;
    });
  }
}