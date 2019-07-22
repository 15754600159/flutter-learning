/**
 * 侧边栏
 */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('sidebar'),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: UserAccountsDrawerHeader(
                      accountName: Text('guoshio'),
                      accountEmail: Text('guoshi@qq.com'),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage('https://i0.hdslb.com/bfs/archive/3c26d1febef944de6c524a1597e9a34ec656c4e8.jpg@336w_190h.webp'),
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://i0.hdslb.com/bfs/archive/06873850299947819f2751d8ed77db9044a50e6e.png@336w_190h.webp'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
                title: Text('我的空间'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text('用户中心'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.settings),
                ),
                title: Text('设置'),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}