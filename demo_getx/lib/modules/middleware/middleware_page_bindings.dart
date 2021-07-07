import 'package:get/get.dart';

import 'middleware_page_controller.dart';

class MiddlewarePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MiddlewarePageController());
  }
}