
import 'package:bootcodefluttertemplate/_01_safearea/safearea.dart';
import 'package:bootcodefluttertemplate/_04_animated_container/animated_container.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '_02_expanded/expanded.dart';
import '_03_wrap/wrap.dart';
import '_05_opacity/opacity.dart';
import '_06_future_builder/opacity.dart';


class FluroRouter {
  static Router router = Router();
  static Handler _safeAreaHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => SafeAreaPage());
  static Handler _expandedAreaHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => ExpandedPage());
  static Handler _wrapAreaHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => WrapPage());
  static Handler _animatedContainerAreaHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => AnimatedContainerPage());
  static Handler _opacityHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => OpacityPage());
  static Handler _futureBuilderHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => FutureBuilderPage());

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

    router.define(
      'wrap',
      handler: _wrapAreaHandler,
      transitionType: TransitionType.material,
    );

    router.define(
      'animated_container',
      handler: _animatedContainerAreaHandler,
      transitionType: TransitionType.material,
    );

    router.define(
      'opacity',
      handler: _opacityHandler,
      transitionType: TransitionType.material,
    );

    router.define(
      'future_builder',
      handler: _futureBuilderHandler,
      transitionType: TransitionType.material,
    );
  }
}