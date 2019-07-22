/**
 * 横向列表
 */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// 07 horizontal_list_view_widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List view widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('List view widget'),
        ),
        body: Center(
          child: Container(
            height: 200.0,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                new Container(
                  width: 180.0,
                  color: Colors.lightBlue,
                ),
                new Container(
                  width: 180.0,
                  color: Colors.amber,
                ),
                new Container(
                  width: 180.0,
                  color: Colors.deepOrange,
                ),
                new Container(
                  width: 180.0,
                  color: Colors.deepPurpleAccent,
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}