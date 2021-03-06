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


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Example Templates',
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
