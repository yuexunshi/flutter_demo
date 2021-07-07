import 'package:demo_getx/modules/home/home_page.dart';
import 'package:demo_getx/modules/inject/inject_simple_binding.dart';
import 'package:demo_getx/modules/inject/inject_simple_page.dart';
import 'package:demo_getx/modules/login/login_page_bindings.dart';
import 'package:demo_getx/modules/login/login_page_page.dart';
import 'package:demo_getx/modules/middleware/middleware_page_bindings.dart';
import 'package:demo_getx/modules/middleware/middleware_page_page.dart';
import 'package:demo_getx/modules/nav/nav_page.dart';
import 'package:demo_getx/modules/nav/simple_page.dart';
import 'package:get/get.dart';

import 'middleware/auth_middleware.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.NAV,
      page: () => NavPage(),
    ),
    GetPage(
      name: Routes.NAV_SIMPLE,
      page: () => NavSimplePage(),
    ),
    GetPage(
      name: "${Routes.NAV_SIMPLE}/:title",
      page: () => NavSimplePage(),
    ),
    GetPage(
      name: Routes.INJECT,
      page: () => InjectSimplePage(),
      binding: InjectSimpleBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPagePage(),
      binding: LoginPageBinding(),
    ),
    GetPage(
      name: Routes.MIDDLEWARE_PAGE,
      page: () => MiddlewarePagePage(),
      binding: MiddlewarePageBinding(),
      middlewares: [AuthMiddleware()],
    ),
  ];
}
