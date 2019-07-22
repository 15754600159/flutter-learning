/**
 * flutter 普通路由
 * 1. Navigator.of(context).push
 * 2. Navigator.of(context).pop
 * 3. 导航传参(detail路由)
 */

import 'package:flutter/material.dart';

import './20 searchPage.dart';
import './20 detail.dart';

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
        body: Body(),
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

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('跳到搜索页面'),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SearchPage()
              )
            );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳到详情页面'),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Detail(id: 3,)
              )
            );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ],
    );
  }
}