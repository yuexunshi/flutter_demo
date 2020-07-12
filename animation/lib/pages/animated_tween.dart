import 'package:animation/r.dart';
import 'package:flutter/material.dart';

class AnimatedTweenPage extends StatefulWidget {
  @override
  _AnimatedTweenPageState createState() => _AnimatedTweenPageState();
}

class _AnimatedTweenPageState extends State<AnimatedTweenPage> {
  double _sliderValue = 0;
  Color _newColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            R.bg,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fitWidth,
          ),
          Column(
            children: <Widget>[
              Center(
                child: TweenAnimationBuilder(
                  tween: ColorTween(begin: Colors.white, end: _newColor),
                  duration: Duration(seconds: 1),
                  builder: (_, Color color, __) {
                    return ColorFiltered(
                      child: Image.asset(
                        R.lihuili,
                      ),
                      colorFilter: ColorFilter.mode(color, BlendMode.modulate),
                    );
                  },
                ),
              ),
              Slider.adaptive(
                  value: _sliderValue,
                  onChanged: (double value) {
                    setState(() {
                      _sliderValue = value;
                      _newColor =
                          Color.lerp(Colors.white, Colors.blue, _sliderValue);
                    });
                  })
            ],
          ),
        ],
      ),
    );
  }
}
