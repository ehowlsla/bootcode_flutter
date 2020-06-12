import 'dart:math';

import 'package:flutter/material.dart';

class FadeTransitionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FadeTransitionPageState();
}

class FadeTransitionPageState extends State<FadeTransitionPage> with SingleTickerProviderStateMixin {

  Animation _animation;
  AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        duration: const Duration(seconds: 1),
        vsync: this
    );

    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);


    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
    });
    _controller.forward(); //start
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Material(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Center(
                child: FadeTransition(
                  opacity: _animation,
                  child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BackButton(),
                ],
              )
            )
          ],
        ),
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