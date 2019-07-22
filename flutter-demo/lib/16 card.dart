/**
 * card组件
 */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20/9,
                child: Image.network(
                  'https://img1.mukewang.com/szimg/5ad05dc00001eae705400300.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://img1.mukewang.com/szimg/5ad05dc00001eae705400300.jpg'),
                ),
                title: Text('XX'),
                subtitle: Text('XXXXXX'),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('张三', style: TextStyle(fontSize: 28)),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话：XXXXX'),
              ),
              ListTile(
                title: Text('地址：XXXXX'),
              ),
            ],
          ),
        )
      ],
    );
  }
}

