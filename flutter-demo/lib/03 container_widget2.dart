/**
 * 容器组件
 */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// 04 container_widget2
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextWidget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextWidget'),
        ),
        body: Center(
          child: Container(
            child: Text(
              'hello Imooc',
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
            alignment: Alignment.topLeft,
            width: 500.0,
            height: 400.0,
            // padding: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
            margin: const EdgeInsets.all(10.0),
            // 背景渐变
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Colors.lightBlue,
                  Colors.greenAccent,
                  Colors.purple,
                ]
              )
            ),
          )
        ),
      ),
    );
  }
}