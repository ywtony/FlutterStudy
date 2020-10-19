import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///旋转盒子
///
class RoatedBoxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '旋转盒子',
      home: Scaffold(
        appBar: AppBar(
          title: Text('旋转盒子'),
        ),
        body: Center(
          child: RotatedBox(
            //旋转次数3次，每次90度
            quarterTurns: 3,
            child: Image.asset(
              'images/girl9.jpg',
              width: 200,
              height: 200,
            ),
          ),
        ),
      ),
    );
  }
}
