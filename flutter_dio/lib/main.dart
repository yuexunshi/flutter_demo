import 'package:flutter/material.dart';
import 'package:flutter_dio/http/api_response.dart';
import 'package:flutter_dio/http/http_utils.dart';

import 'gan_repository.dart';
import 'http/http.dart';
import 'models/category_entity.dart';

void main() {
  HttpUtils.init(
    baseUrl: "https://gan.io/",
  );
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
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('data'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          FlatButton(
              color: Colors.amber,
              onPressed: () {
                getCategories();
              },
              child: Text("get请求")),
        ],
      ),
    );
  }
}

void getCategories() async {
  ApiResponse<CategoryEntity> entity = await GanRepository.getCategories();
  print(entity.data.data.length);
}
