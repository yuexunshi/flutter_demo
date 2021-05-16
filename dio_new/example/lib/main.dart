import 'package:dio_new/dio_new.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HttpConfig dioConfig =
      HttpConfig(baseUrl: "https://gank.io/", proxy: "192.168.2.249:8888");
  HttpClient client = HttpClient(dioConfig: dioConfig);
  Get.put<HttpClient>(client);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  HttpClient dio;

  void get() async {
    HttpResponse appResponse = await dio.get("api/v2/banners");
    if (appResponse.ok) {
      debugPrint("====" + appResponse.data.toString());
    } else {
      debugPrint("====" + appResponse.error.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    dio = Get.find<HttpClient>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('appbarTitle'),
        ),
        body: Column(
          children: <Widget>[
            TextButton(
              onPressed: () {
                get();
              },
              child: Text('Get'),
            ),
          ],
        ));
  }
}
