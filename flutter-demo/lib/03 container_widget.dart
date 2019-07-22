/**
 * container组件
 * 1. 类似html的div容器
 */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
            child: new Text(
              'hello Imooc',
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
            alignment: Alignment.centerLeft,
            width: 300.0,
            height: 400.0,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              border: Border.all(
                color: Colors.blue,
                width: 2.0,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              )
            ),
          )
        ),
      ),
    );
  }
}