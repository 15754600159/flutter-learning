/**
 * flutter 命名路由
 * 1. Navigator.push
 * 2. MaterialApp下的routes定义命名路由
 * 3. 命名路由的传参
 */

import 'package:flutter/material.dart';
import './21 searchPage.dart';
import './21 detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      routes: {
        '/search': (context) => SearchPage(),
        Detail.routeName: (context) => Detail(),
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
          child: Text('跳到搜索页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/search');
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳到详情页面'),
          onPressed: () {
            Navigator.pushNamed(
              context,
              Detail.routeName,
              arguments: ArgumentsType(id: 3),
            );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
}