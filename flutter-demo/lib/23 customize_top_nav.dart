/**
 * 自定义appBar
 */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'demo',
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('demo'),
            // 顶部左边按钮
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                print('menu');
              },
            ),
            // 顶部右边按钮
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('search');
                },
              ),
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: '热门',),
                Tab(text: '推荐',),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Text('tab1'),
              Text('tab2'),
            ],
          ),
        ),
      ),
    );
  }
}