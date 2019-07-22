/**
 * 自定义组件
 * 1. 传参
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
    return IconContainer(Icons.home);
  }
}

class IconContainer extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;

  IconContainer(this.icon, { this.size = 32, this.color = Colors.red });

  @override
  Widget build(BuildContext context) {
    print(this.color);
    print(this.size);
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child: Center(
        child: Icon(this.icon, size: this.size, color: Colors.white,),
      ),
    );
  }
}
