import 'package:animation/routes.dart';
import 'package:animation/transitions/rotation_rade.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          pageTransitionsTheme: PageTransitionsTheme(builders: {
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.android: RotationFadeTransitionBuilder(),
          })),
      routes: Routes.routes,
      home: MyHomePage(title: '动画'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: Routes.routes.keys
              .map((e) => RaisedButton(
                    onPressed: () => Navigator.pushNamed(context, e),
                    child: Text(e),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
