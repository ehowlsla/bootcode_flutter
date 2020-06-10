import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  List<String> _menuList = [
    'safearea',
    'expanded',
    'wrap',
  ];

  @override
  Widget build(BuildContext context) {

//    print(_menuList);
//    return Container();
    // TODO: implement build
    return Material(

      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('부트코더 Flutter Widget', style: TextStyle(color: Colors.white)),
          centerTitle: true,
//          bottomOpacity: 0.0,
//          elevation: 0.0,
        ),
        body: ListView.separated(
            itemCount: _menuList.length,
            separatorBuilder: (context, index) {
              return Divider(height: 1);
            },
            itemBuilder: (context, index) {
              return Container(
                child: ListTile(
                  title: Text('Widget ${index+1}: ${_menuList[index]}'),
                  onTap: () => Navigator.pushNamed(context, _menuList[index]),
                ),
              );
            }),
      ),
    );
  }
}
