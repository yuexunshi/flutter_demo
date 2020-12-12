import 'package:demo_getx/modules/inject/api.dart';
import 'package:get/get.dart';

class InjectSimpleController extends GetxController {
  Api api = Get.find<Api>();
  final _obj = 0.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
  getAge() async {
    var i = await api.getAge();
    obj = i;
  }
}
