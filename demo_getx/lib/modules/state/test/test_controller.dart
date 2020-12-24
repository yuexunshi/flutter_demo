import 'package:get/get.dart';

class TestController extends GetxController {
  final RxList<String> imageFiles = <String>[].obs;

  int count = 0;
  add() {
    imageFiles.add("${count++}");
  }
}
