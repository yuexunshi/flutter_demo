import 'package:flutter/material.dart';

class AnimatedWidgetPage extends StatefulWidget {
  const AnimatedWidgetPage({Key key}) : super(key: key);

  @override
  _AnimatedWidgetPageState createState() => _AnimatedWidgetPageState();
}

class _AnimatedWidgetPageState extends State<AnimatedWidgetPage> {
  bool _bigger = false;

  _updateState() {
    setState(() {
      _bigger = !_bigger;
    });
  }
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("隐式动画"),
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            RaisedButton(
//              onPressed: () {
//                _updateState();
//              },
//              child: Text('Animate'),
//            ),
//            Container(
//
//              width: _bigger ? 400 : 100,
//              height: _bigger ? 400 : 100,
//              color: Colors.lightBlue[200],
//              child: Center(
//                child: Text(
//                  'Animatiaon',
//                  style: Theme.of(context).textTheme.subtitle1,
//                ),
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("隐式动画"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                _updateState();
              },
              child: Text('Animate'),
            ),
            AnimatedContainer(
              duration: Duration(
                milliseconds: 400,
              ),
              width: _bigger ? 400 : 100,
              height: _bigger ? 400 : 100,
              curve: Curves.bounceOut,
              color: Colors.lightBlue[200],
              child: Center(
                child: Text(
                  'Animatiaon',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
