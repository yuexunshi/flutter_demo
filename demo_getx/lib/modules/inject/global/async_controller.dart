import 'package:get/get.dart';

class AsyncController extends GetxController {
  static AsyncController? _instance;

  static Future<AsyncController> getInstance() async {
    if (_instance == null) {
      await Future.delayed(Duration(milliseconds: 500));
      _instance = AsyncController();
    }
    return _instance!;
  }
}
