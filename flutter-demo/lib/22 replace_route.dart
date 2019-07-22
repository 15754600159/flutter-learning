/**
 * 路由流程实现
 * 1. pushReplacementNamed替换当前路由
 */

import 'package:flutter/material.dart';
import './22 register_step_one.dart';
import './22 register_step_two.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      routes: {
        '/registerOne': (context) => RegisterOne(),
        '/registerTwo': (context) => RegisterTwo(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('demo'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('跳到注册页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/registerOne');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
}