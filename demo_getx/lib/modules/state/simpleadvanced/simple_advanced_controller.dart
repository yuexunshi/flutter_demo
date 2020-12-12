import 'package:english_words/english_words.dart';
import 'package:get/get.dart';

class SimpleAdvancedController extends GetxController {
  int _counter = 0;
  int get counter => _counter;

  String _name = "Lili";
  String get firstName => _name;

  void increment() {
    _counter++;
    _name = WordPair.random().asPascalCase;
    update(['counter']);
  }

  void changeName() {
    _counter++;
    _name = WordPair.random().asPascalCase;
    update(['name']);
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
