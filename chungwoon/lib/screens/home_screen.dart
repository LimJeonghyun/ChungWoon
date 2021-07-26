import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _icon = Icons.play_arrow;
  var _color = Colors.amber;
  int _counter = 0; //_ : private (class 내부에서만 사용 가능하다)
  late Timer _timer; //late? Timer check!!!
  var _time = 0;
  var _isPlaying = false;

  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times'),
            Text("$_counter", style: Theme
                .of(context)
                .textTheme
                .display1),

            FloatingActionButton(
              onPressed: _IncrementCounter,
              tooltip: "increment",
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () =>
                  setState(() {
                    _click();
                  }),
              child: Icon(_icon),
              backgroundColor: _color,
            ),
          ],
        ),
      ),
    );
  }

  void _IncrementCounter() {
    setState(() {
      _counter = _counter * 4;
      // _counter*4;
    });
  }

  Widget _body() {
    return Container();
  }

  void _start() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _counter++;
      });
    });
  }

  void _pause() {
    _timer.cancel();
  }

  void _reset() {
    setState(() {
      _isPlaying = false;
      _timer.cancel();
      _counter = 0;
    });
  }

  void _click() {
    if (_icon == Icons.play_arrow) {
      _icon = Icons.pause;
      _color = Colors.grey;
      _start();
    } else {
      _icon = Icons.play_arrow;
      _color = Colors.amber;
      _pause();
      _reset();
    }
  }
}