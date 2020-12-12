import 'package:demo_getx/modules/nav/simple_page.dart';
import 'package:demo_getx/routes/app_pages.dart';
import 'package:demo_getx/widget/CheetahButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('导航')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CheetahButton('直接路由', () => Get.to(NavSimplePage())),
            CheetahButton('简单命名路由', () => Get.toNamed(Routes.NAV_SIMPLE)),
            CheetahButton('arguments命名路由', () async {
              var result = await Get.toNamed(Routes.NAV_SIMPLE, arguments: '石原里美');
              print('带参数命名路由返回：$result');
            }),
            CheetahButton(
              'params命名路由',
              () => Get.toNamed('${Routes.NAV_SIMPLE}?name=Julian&title=params'),
            ),
            CheetahButton(
              'path命名路由',
              () => Get.toNamed('${Routes.NAV_SIMPLE}/zhilong'),
            ),
            CheetahButton('replace路由', () {
              Get.offNamed(Routes.NAV_SIMPLE);
            }),
            CheetahButton(
              'Navigate and pop until...',
              () => Get.offNamedUntil(
                Routes.NAV_SIMPLE,
                (route) => route.isFirst,
              ),
            ),
            CheetahButton(
              '删除当前路由',
              () => Get.removeRoute(Get.routing.route),
            ),
            CheetahButton('flutter路由', () {
              navigator.pushNamed(Routes.NAV_SIMPLE);
            }),
            CheetahButton('对话框', () {
              Get.defaultDialog(onConfirm: () => print("Ok"), middleText: "Dialog made in 3 lines of code");
            }),
            CheetahButton('snackbar', () {
              Get.snackbar('Hi', 'i am a modern snackbar');
            }),
            CheetahButton('BottomSheets', () {
              Get.bottomSheet(
                  Container(
                    child: Wrap(
                      children: <Widget>[
                        ListTile(leading: Icon(Icons.music_note), title: Text('Music'), onTap: () => {}),
                        ListTile(
                          leading: Icon(Icons.videocam),
                          title: Text('Video'),
                          onTap: () => {},
                        ),
                      ],
                    ),
                  ),
                  backgroundColor: Colors.white);
            }),
          ],
        ),
      ),
    );
  }
}
