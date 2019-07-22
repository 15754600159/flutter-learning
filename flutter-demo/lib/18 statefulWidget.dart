/**
 * statefulWidget
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
        body: HomePage()
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 200,),
        Chip(
          label: Text('${this.num}'),
        ),
        SizedBox(height: 20,),
        RaisedButton(
          child: Text('按钮'),
          onPressed: () {
            setState(() {
              this.num++;
            });
          },
        )
      ],
    );
  }
}