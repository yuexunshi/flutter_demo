import 'package:auto_dispose/page/auto_page.dart';
import 'package:auto_dispose/page/page1.dart';
import 'package:auto_dispose/page/page2.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const String page1 = 'page1';
  static const String page2 = 'page2';
  static const String auto_page = 'auto_page';

  static Map<String, WidgetBuilder> routes = {
    page1: (BuildContext context) => Page1(),
    page2: (BuildContext context) => Page2(),
    auto_page: (BuildContext context) => AutoPage(),
  };
}
