import 'package:auto_dispose/route/app_route.dart';
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
      routes: AppRoute.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoute.page1);
                },
                child: Text('去page1')),
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoute.page2);
                },
                child: Text('去page2')),
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoute.auto_page);
                },
                child: Text('去auto_page')),
          ],
        ),
      ),
    );
  }
}
