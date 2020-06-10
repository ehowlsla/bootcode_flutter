
import 'package:bootcodefluttertemplate/_01_safearea/safearea.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '_02_expanded/expanded.dart';
import 'home.dart';

class FluroRouter {
  static Router router = Router();
  static Handler _safeAreaHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => SafeAreaPage());
  static Handler _expandedAreaHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => ExpandedPage());

  static void setupRouter() {
    router.define(
      'safearea',
      handler: _safeAreaHandler,
      transitionType: TransitionType.material,
    );

    router.define(
      'expanded',
      handler: _expandedAreaHandler,
      transitionType: TransitionType.material,
    );
  }
}