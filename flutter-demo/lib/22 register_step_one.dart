import 'package:flutter/material.dart';

class RegisterOne extends StatelessWidget {
  const RegisterOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册步骤1'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('跳到注册步骤2'),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/registerTwo');
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ],
      ),
    );
  }
}