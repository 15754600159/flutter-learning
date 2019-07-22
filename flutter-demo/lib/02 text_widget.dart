/**
 * 文本组件
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
          child: Text(
            '你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁你是谁',
            textAlign: TextAlign.left,
            // maxLines: 2,
            // overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 25.0,
              color: Color.fromARGB(255, 255, 150, 150),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}