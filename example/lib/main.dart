import 'package:flutter/material.dart';
import 'package:sleepy/sleepy.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('sleepy'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                    child: Text('sleep'),
                    onPressed: () async {
                      print(await Sleepy.sleep);
                    }),
                RaisedButton(
                  child: Text('try to click me when sleeping'),
                  onPressed: () {},
                ),
              ],
            ),
          )),
    );
  }
}
