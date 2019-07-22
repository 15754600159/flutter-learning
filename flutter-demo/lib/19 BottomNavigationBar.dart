/**
 *
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
        body: null,
        bottomNavigationBar: Bottom(),
      ),
    );
  }
}

class Bottom extends StatefulWidget {
  Bottom({Key key}) : super(key: key);

  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: this.index,
      onTap: (int index) {
        setState(() {
          this.index = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('首页'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          title: Text('分类'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('设置'),
        ),
      ],
    );
  }
}