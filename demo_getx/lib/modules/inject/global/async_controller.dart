import 'package:get/get.dart';

class AsyncController extends GetxController {
  static AsyncController instance;
  static Future<AsyncController> getInstance() async {
    if (instance == null) {
      Future.delayed(Duration(milliseconds: 500));
      instance = AsyncController();
    }
    return instance;
  }
}
