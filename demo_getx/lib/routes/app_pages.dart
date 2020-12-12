
import 'package:demo_getx/modules/home/home_page.dart';
import 'package:demo_getx/modules/nav/nav_page.dart';
import 'package:demo_getx/modules/nav/simple_page.dart';
import 'package:get/get.dart';
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
  ];
}
