import 'package:get/get.dart';

import 'bing_page_controller.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class BingPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BingPageController());
  }
}