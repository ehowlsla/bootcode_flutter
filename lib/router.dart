
import 'package:bootcodefluttertemplate/_01_safearea/safearea.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class FluroRouter {
  static Router router = Router();
  static Handler _safeAreaHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => SafeAreaPage());

  static void setupRouter() {
    router.define(
      'safearea',
      handler: _safeAreaHandler,
      transitionType: TransitionType.material,
    );
  }
}