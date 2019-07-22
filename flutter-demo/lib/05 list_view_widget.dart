/**
 * 列表组件
 */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// 06 list_view_widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List view widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('List view widget'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.border_right),
              title: Text('border_right'),
              subtitle: Text('中华天气网中华天气网中华天气网中华天气网'),
            ),
            // ListTile(
            //   leading: Icon(Icons.android),
            //   title: Text('android'),
            // ),
            // ListTile(
            //   leading: Icon(Icons.arrow_back_ios),
            //   title: Text('arrow_back_ios'),
            // ),
            Image.network('https://img4.mukewang.com/szimg/59b8a486000107fb05400300.jpg'),
            Image.network('https://img1.mukewang.com/5cfdd215089d136306000338-240-135.jpg'),
            Image.network('https://img1.mukewang.com/szimg/5cbf00c608f52a3b06000338.jpg'),
            Image.network('https://img4.mukewang.com/szimg/59b8a486000107fb05400300.jpg'),
            Image.network('https://img1.mukewang.com/5cfdd215089d136306000338-240-135.jpg'),
            Image.network('https://img1.mukewang.com/szimg/5cbf00c608f52a3b06000338.jpg'),
          ],
        )
      ),
    );
  }
}