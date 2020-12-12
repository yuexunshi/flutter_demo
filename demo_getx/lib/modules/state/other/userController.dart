import 'package:demo_getx/modules/state/models/user.dart';
import 'package:english_words/english_words.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final user = User().obs;

  updateUser(int count) {
    user.update((value) {
      value.name = WordPair.random().asPascalCase;
      value.count = count;
    });
  }
}
