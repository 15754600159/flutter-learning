import 'package:flutter/material.dart';

class RegisterTwo extends StatelessWidget {
  const RegisterTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册步骤2'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('注册完成'),
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ],
      ),
    );
  }
}