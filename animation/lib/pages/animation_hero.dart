import 'package:animation/r.dart';
import 'package:flutter/material.dart';

class BasicHeroAnimation extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Hero Animation'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Flippers Page'),
                    ),
                    body: Container(
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.topLeft,
                      // Use background color to emphasize that it's a new route.
                      color: Colors.lightBlueAccent,
                      child: Hero(
                        tag: 'flippers',
                        child: SizedBox(
                          width: 100.0,
                          child: Image.asset(
                            R.flippers,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
          // Main route
          child: Hero(
            tag: 'flippers',
            child: Image.asset(
              R.flippers,
            ),
          ),
        ),
      ),
    );
  }
}
