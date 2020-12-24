import 'package:demo_getx/modules/inject/global/lazy_controller.dart';
import 'package:demo_getx/routes/app_pages.dart';
import 'package:demo_getx/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'modules/home/home_page.dart';
import 'modules/inject/global/async_controller.dart';
import 'modules/inject/global/put_controller.dart';
import 'modules/local/app_translation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put<PutController>(PutController());
  Get.lazyPut<LazyController>(() => LazyController());
  Get.putAsync<AsyncController>(() async {
    final controller = await AsyncController.getInstance();
    return controller;
  });
  Get.putAsync<SharedPreferences>(() async {
    final sp = await SharedPreferences.getInstance();
    return sp;
  });

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    theme: appThemeData,
    locale: Locale('fr', 'Ca'),
    fallbackLocale: Locale('en', 'US'), // 添加一个回调语言选项，以备上面指定的语言翻译不存在
    defaultTransition: Transition.fade,
    translationsKeys: AppTranslation.translations,
    getPages: AppPages.pages,
    home: HomePage(),
  ));
}
//用Flutter创建一个简单的SnackBar，你必须获得Scaffold的context，或者你必须使用一个GlobalKey附加到你的Scaffold上。
