/**
 * checkbox
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
    return CheckboxComponeng();
  }
}

class CheckboxComponeng extends StatefulWidget {
  CheckboxComponeng({Key key}) : super(key: key);
  _CheckboxComponengState createState() => _CheckboxComponengState();
}

class _CheckboxComponengState extends State<CheckboxComponeng> {
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('checkbox'),
      ),
      body: Wrap(
        children: <Widget>[
          Checkbox(
            value: this.flag,
            onChanged: (value) {
              setState(() {
                this.flag = value;
              });
            },
          ),
          CheckboxListTile(
            value: this.flag,
            onChanged: (value) {
              setState(() {
                this.flag = value;
              });
            },
            title: Text('一级标题'),
            subtitle: Text('二级标题'),
            secondary: Icon(Icons.help),
          ),
        ],
      ),
    );
  }
}

