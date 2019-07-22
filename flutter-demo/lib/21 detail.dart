import 'package:flutter/material.dart';

// 参数类型
class ArgumentsType {
  final int id;
  ArgumentsType({ this.id });
}

class Detail extends StatelessWidget {
  static String routeName = '/detail';

  const Detail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ArgumentsType args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('详情页'),
      ),
      body: Container(
        child: Text('这是详情页，id：${args.id}'),
      ),
    );
  }
}