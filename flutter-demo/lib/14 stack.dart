/**
 * stack与Align/Positionde布局：类似web的position: absolute布局
 * 1. 嵌套：container > stack > align/positioned
 * 2. align/positioned相对container定位
 */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// GridView
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('demo'),
        ),
        body: LayoutDemo()
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Icon(Icons.home, size: 40, color: Colors.white,),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: Icon(Icons.search, size: 40, color: Colors.white,),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Icon(Icons.send, size: 40, color: Colors.white,),
          ),
        ],
      ),
    );
  }
}

