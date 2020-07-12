import 'package:animation/pages/animated_switch.dart';
import 'package:animation/pages/animated_tween.dart';
import 'package:animation/pages/animated_widget.dart';
import 'package:animation/pages/animation_hero.dart';
import 'package:flutter/material.dart';



class Routes {
  static final String animatedWidgetPage = '/animated_widget_page';
  static final String animatedTweenPage = '/animated_tween_page';
  static final String animatedSwitchPage = '/animated_switch_page';
  static final String animatedHeroPage = '/animated_hero_page';

  static Map<String, WidgetBuilder> routes = {
    animatedWidgetPage: (_) => AnimatedWidgetPage(),
    animatedTweenPage: (_) => AnimatedTweenPage(),
    animatedSwitchPage: (_) => AnimatedSwitchPage(),
    animatedHeroPage: (_) => BasicHeroAnimation(),
  };
}
