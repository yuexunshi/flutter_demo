import 'package:demo_getx/modules/inject/inject_simple_binding.dart';
import 'package:demo_getx/modules/inject/inject_simple_page.dart';
import 'package:demo_getx/modules/local/local_page.dart';
import 'package:demo_getx/modules/state/other/state_page.dart';
import 'package:demo_getx/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: Get.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
            ),
            child: Row(
              children: [
                FlutterLogo(
                  size: 100,
                ),
                SizedBox(
                  width: 50,
                ),
                Text('GETX', style: Theme.of(context).textTheme.headline2),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height * .35, left: 20, right: 20),
            child: GridView.count(
              crossAxisCount: 2,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: .95,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: <Widget>[
                Card(
                  title: '路由',
                  icon: Icons.router,
                  onTap: () {
                    print("点击了路由'");
                    Get.toNamed(Routes.NAV);
                  },
                ),
                Card(
                  title: 'State Manager',
                  icon: Icons.stairs,
                  onTap: () {
                    Get.to(StatePage());
                  },
                ),
                Card(
                  title: '依赖注入',
                  icon: Icons.inbox_outlined,
                  onTap: () {
                    Get.to(InjectSimplePage(), binding: InjectSimpleBinding());
                  },
                ),
                Card(
                  title: '国际化',
                  icon: Icons.language,
                  onTap: () {
                    Get.to(LocalPage());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String title;
  final IconData icon;
  final GestureTapCallback onTap;
  const Card({
    Key key,
    @required this.title,
    @required this.icon,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Column(
          children: [
            Spacer(),
            Icon(
              icon,
              size: 80,
              color: Colors.amber,
            ),
            Spacer(),
            SizedBox(height: 20),
            Text(title, style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
