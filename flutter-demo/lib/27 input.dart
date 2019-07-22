/**
 * 输入框
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
        body: Column(
          children: <Widget>[
            // 普通输入框
            TextField(),
            SizedBox(height: 10,),
            TextField(
              // 多行
              maxLines: 4,
              decoration: InputDecoration(
                // placeholder
                hintText: "请输入内容",
                // 边框
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            // 密码框
            TextField(
              obscureText: true,
            ),
            SizedBox(height: 10),
            // 标签
            TextField(
              decoration: InputDecoration(
                labelText: '用户名',
              ),
            ),
            SizedBox(height: 10),
            // 图标
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.home),
              ),
            ),
            SizedBox(height: 10),
            // 输入框的值控制和获取
            InputController()
          ],
        )
      ),
    );
  }
}

class InputController extends StatefulWidget {
  InputController({Key key}) : super(key: key);
  _InputControllerState createState() => _InputControllerState();
}

class _InputControllerState extends State<InputController> {
  var userName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          onChanged: (value) {
            setState(() {
              this.userName = value;
            });
          },
        ),
        RaisedButton(
          child: Text('提交'),
          onPressed: () {
            print(this.userName);
          },
        ),
      ],
    );
  }
}