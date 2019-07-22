/**
 * padding组件
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
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1.7,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network('https://img1.mukewang.com/szimg/5ad05dc00001eae705400300.jpg', fit: BoxFit.cover,),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network('https://img4.mukewang.com/szimg/5c18d2d8000141c506000338.jpg', fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network('https://img2.mukewang.com/szimg/5a7127370001a8fa05400300.jpg', fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network('https://img1.mukewang.com/szimg/5c7e6835087ef3d806000338.jpg', fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network('https://img1.mukewang.com/szimg/5d1032ab08719e0906000338.jpg', fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network('https://img4.mukewang.com/szimg/5d14215f08545a6b06000338.jpg', fit: BoxFit.cover),
        ),
      ],
    );
  }
}
