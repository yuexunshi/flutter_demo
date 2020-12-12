import 'package:demo_getx/widget/CheetahButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_translation.dart';

class LocalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyPage')),
      body: Column(
        children: [
          CheetahButton(LocaleKeys.buttons_login.tr, () {}),
          CheetahButton(LocaleKeys.buttons_logout.tr, () {}),
          CheetahButton(LocaleKeys.buttons_sign_in.tr, () {}),
          CheetahButton(LocaleKeys.buttons_change_zh.tr, () {
            var locale = Locale('zh', 'CN');
            Get.updateLocale(locale);
          }),
          CheetahButton(LocaleKeys.buttons_change_en.tr, () {
            var locale = Locale('en', 'US');
            Get.updateLocale(locale);
          }),
          CheetahButton('改变主题', () {
            Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
          }),
        ],
      ),
    );
  }
}
