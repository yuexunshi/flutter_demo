import 'package:flutter/material.dart';

class AnimatedWidgetPage extends StatefulWidget {
  const AnimatedWidgetPage({Key key}) : super(key: key);

  @override
  _AnimatedWidgetPageState createState() => _AnimatedWidgetPageState();
}

class _AnimatedWidgetPageState extends State<AnimatedWidgetPage> {
  double _width = 150;
  double _height = 150;

  _updateState() {
    setState(() {
      _width = 400;
      _height = 400;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              width: _width,
              height: _height,
              curve: Curves.bounceOut,
              color: Colors.lightBlue[200],
              child: Center(
                child: Text(
                  'Animatiaon',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
