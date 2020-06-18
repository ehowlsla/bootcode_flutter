
import 'package:bootcodefluttertemplate/_01_safearea/safearea.dart';
import 'package:bootcodefluttertemplate/_04_animated_container/animated_container.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '_02_expanded/expanded.dart';
import '_03_wrap/wrap.dart';
import '_05_opacity/opacity.dart';
import '_06_future_builder/future_builder.dart';
import '_07_fade_transition/fade_transition.dart';
import '_08_fab/fab.dart';
import '_09_pageview/pageview.dart';
import '_10_table/table.dart';
import '_11_sliver_app_bar/siliver_app_bar.dart';
import '_12_sliver_list_grid/siliver_list_grid.dart';


class FluroRouter {
  static Router router = Router();
  static Handler _safeAreaHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => SafeAreaPage());
  static Handler _expandedAreaHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => ExpandedPage());
  static Handler _wrapAreaHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => WrapPage());
  static Handler _animatedContainerAreaHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => AnimatedContainerPage());
  static Handler _opacityHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => OpacityPage());
  static Handler _futureBuilderHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => FutureBuilderPage());
  static Handler _fadeTransitionHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => FadeTransitionPage());
  static Handler _fabHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => FabPage());
  static Handler _pageViewHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => PageViewPage());
  static Handler _tableHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => TablePage());
  static Handler _sliverAppHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => SliverAppBarPage());
  static Handler _sliverListGridAppHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => SliverListGridPage());


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

    router.define(
      'fade_transition',
      handler: _fadeTransitionHandler,
      transitionType: TransitionType.material,
    );

    router.define(
      'fab',
      handler: _fabHandler,
      transitionType: TransitionType.material,
    );

    router.define(
      'page_view',
      handler: _pageViewHandler,
      transitionType: TransitionType.material,
    );

    router.define(
      'table',
      handler: _tableHandler,
      transitionType: TransitionType.material,
    );

    router.define(
      'sliver_app_bar',
      handler: _sliverAppHandler,
      transitionType: TransitionType.material,
    );

    router.define(
      'sliver_list_grid',
      handler: _sliverListGridAppHandler,
      transitionType: TransitionType.material,
    );
  }
}