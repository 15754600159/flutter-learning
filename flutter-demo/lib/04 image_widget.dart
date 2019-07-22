/**
 * 图片组件
 * 1. 有本地、线上
 * 2. 本地图片引入需要配置pubspec.yaml文件
 */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// 05 image_widget2
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
            child: new Image.network(
              'https://img4.mukewang.com/szimg/59b8a486000107fb05400300.jpg',
              scale: 2.0,
              // fit: BoxFit.cover,
              repeat: ImageRepeat.repeat,
            ),
            width: 400.0,
            height: 300.0,
            color: Colors.lightBlue,
          )
        ),
      ),
    );
  }
}