/**
 * warp组件：多行组件，会自动换行
 * 1. row组件只能单行
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
    return Container(
      height: 400,
      width: 300,
      color: Colors.pink,
      child: Wrap(
        // 横向间距
        spacing: 10,
        // 横向排列方式
        alignment: WrapAlignment.end,
        // 纵向间距
        runSpacing: 10,
        // 纵向排列方式
        runAlignment: WrapAlignment.spaceAround,
        children: <Widget>[
          MyButton('第1集'),
          MyButton('第2集第2集'),
          MyButton('第3集'),
          MyButton('第4集'),
          MyButton('第5集第5集第5集'),
          MyButton('第6集'),
          MyButton('第7集'),
          MyButton('第8集'),
          MyButton('第9集'),
          MyButton('第10集'),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;

  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: null,
    );
  }

}

