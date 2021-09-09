import 'package:custom/app/modules/divider_module/divider_controller.dart';
import 'package:get/get.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class DividerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DividerController());
  }
}