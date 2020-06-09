import 'package:flutter/material.dart';

import 'home.dart';
import 'router.dart';
import 'package:timeago/timeago.dart' as timeago;


void main() {
  FluroRouter.setupRouter();

  timeago.setLocaleMessages('ko', timeago.KoMessages());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  List<String> menuList = [
    'safearea'
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '겜스토어',
//      locale: Locale.,
      theme: ThemeData(
        primaryColor: Colors.white,
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black54,
          modalBackgroundColor: Colors.black26,

        ),
      ),
      initialRoute: 'home',
      onGenerateRoute: FluroRouter.router.generator,

      home: HomePage(),
    );
  }
}
