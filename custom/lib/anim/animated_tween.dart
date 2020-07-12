import 'package:flutter/material.dart';

class AnimatedTweenPage extends StatelessWidget {
  Tween<double> _scaleTween = Tween<double>(begin: 1, end: 2);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
//                _updateState();
              },
              child: Text('Animate'),
            ),
            TweenAnimationBuilder(
              tween: _scaleTween,
              duration: Duration(
                milliseconds: 400,
              ),
              builder: (BuildContext context, double value, Widget child) {
                return Transform.scale(
                  scale: value,
                  child: child,
                );
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue[200],
                child: Center(
                  child: Text(
                    'Animatiaon',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
