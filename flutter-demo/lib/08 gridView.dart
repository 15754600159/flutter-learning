/**
 * grid布局
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
  List<Widget> _getistData() {
    List<Widget> list = new List();

    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text(
          '这是第$i条数据',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ));
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 20.0,
      mainAxisSpacing: 20.0,
      childAspectRatio: .7, // 子元素宽高比
      children: this._getistData(),
    );
  }
}
