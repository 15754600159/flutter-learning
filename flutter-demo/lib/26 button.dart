/**
 * 按钮
 * 1. RaisedButton: 凸起按钮
 * 2. FlatButton: 扁平按钮
 * 3. OutlineButton: 边框按钮
 * 4. ButtonBar: 按钮组
 * 5. floatingActionButton: 浮动按钮
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
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          runSpacing: 10,
          children: <Widget>[
            // button外加一层container可以调节按钮宽高
            Container(
              height: 50,
              width: 400,
              child: RaisedButton(
                child: Text('普通按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                // 阴影
                elevation: 10,
                // 圆角
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                onPressed: () {
                  print('press');
                },
              ),
            ),
            // 图标按钮
            RaisedButton.icon(
              icon: Icon(Icons.search),
              label: Text('图标按钮'),
              onPressed: () {},
            ),
            // 扁平化按钮
            FlatButton(
              child: Text('扁平化按钮'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {},
            ),
            // 边框按钮
            OutlineButton(
              child: Text('边框按钮'),
              onPressed: () {},
            ),
            // 按钮组
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text('扁平化按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
                OutlineButton(
                  child: Text('边框按钮'),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}