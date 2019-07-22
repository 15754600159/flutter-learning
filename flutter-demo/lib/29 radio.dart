/**
 * radio
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
  int sex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('radio'),
      ),
      body: Wrap(
        children: <Widget>[
          Text('男'),
          Radio(
            value: 1,
            groupValue: this.sex,
            onChanged: (value) {
              setState(() {
                this.sex = value;
              });
            },
          ),
          Text('女'),
          Radio(
            value: 2,
            groupValue: this.sex,
            onChanged: (value) {
              setState(() {
                this.sex = value;
              });
            },
          ),
          RadioListTile(
            value: 1,
            groupValue: this.sex,
            onChanged: (value) {
              setState(() {
                this.sex = value;
              });
            },
            selected: this.sex == 1,
            title: Text('男'),
            subtitle: Text('性别'),
            secondary: Icon(Icons.help),
          ),
          RadioListTile(
            value: 2,
            groupValue: this.sex,
            onChanged: (value) {
              setState(() {
                this.sex = value;
              });
            },
            selected: this.sex == 2,
            title: Text('女'),
            subtitle: Text('性别'),
            secondary: Icon(Icons.help),
          ),
        ],
      ),
    );
  }
}

