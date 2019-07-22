import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final int id;
  const Detail({Key key, this.id = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('详情页'),
      ),
      body: Container(
        child: Text('这是详情页，id：${this.id}'),
      ),
    );
  }
}