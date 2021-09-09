import 'package:custom/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<Tab> list = [
    Tab(name: '分割线', routeName: Routes.DIVIDER),
    Tab(name: '分割线', routeName: Routes.DIVIDER),
  ];
}

class Tab {
  final String name;
  final String routeName;

  Tab({required this.name, required this.routeName});
}
