import 'package:get/get.dart';

class SimpleController extends GetxController {
  int _counter = 0;
  int get counter => _counter;

  void increment() {
    _counter++;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    print('SimpleController--onInit');
  }

  @override
  void onReady() {
    super.onReady();
    print('SimpleController--onReady');
  }

  @override
  void onClose() {
    super.onClose();
    print('SimpleController--onClose');
  }
}
