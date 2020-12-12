import 'package:get/get.dart';

import 'api.dart';
import 'inject_simple_controllere.dart';

class InjectSimpleBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Api>(() => Api());
    Get.lazyPut<InjectSimpleController>(() => InjectSimpleController());
  }
}
