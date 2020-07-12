import 'package:flutter/material.dart';

import 'anim/animated_tween.dart';
import 'anim/animated_widget.dart';

class Routes {
  static final String animatedWidgetPage = '/animated_widget_page';
  static final String animatedTweenPage = '/animated_tween_page';

  static Map<String, WidgetBuilder> routes = {
    animatedWidgetPage: (_) => AnimatedWidgetPage(),
    animatedTweenPage: (_) => AnimatedTweenPage(),
  };
}
