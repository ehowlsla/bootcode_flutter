import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:requests/requests.dart';

class StreamBuilderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StreamBuilderPageState();
}

class StreamBuilderPageState extends State<StreamBuilderPage> {

  ContainerShape shape;

  StreamController<ContainerShape> _events;

  @override
  initState() {
    super.initState();
    shape = ContainerShape();
    _events = StreamController<ContainerShape>();
    _events.add(shape);
  }

  void changeRandomValue() {
    final random = Random();
    shape.width = random.nextInt(300).toDouble();
    shape.height = random.nextInt(300).toDouble();
    shape.color = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
    shape.borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    _events.add(shape);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("14. StreamBuilder"),
      ),
      body:  Center(
        child:  StreamBuilder(
          stream: _events.stream,
          builder: (BuildContext context, AsyncSnapshot<ContainerShape> snapshot) {
            if(snapshot.hasError) return Container();
            if(snapshot.hasData) return buildContent(snapshot, context);
            return Container(
                padding: EdgeInsets.all(20.0),
                color: Colors.white,
                child: Center(child: CircularProgressIndicator())
            );
          },
        ),
      ),
      floatingActionButton:  FloatingActionButton(
        onPressed: changeRandomValue,
        child:  Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget buildContent(AsyncSnapshot<ContainerShape> snapshot, BuildContext context) {
    return  AnimatedContainer(
      width: snapshot.data.width,
      height: snapshot.data.height,
      decoration:  BoxDecoration(color: snapshot.data.color, borderRadius: snapshot.data.borderRadius),
      duration: Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
  }
}

class ContainerShape {
  double width = 300;
  double height = 300;
  Color color = Colors.blue;
  BorderRadiusGeometry borderRadius = BorderRadius.circular(8);
}