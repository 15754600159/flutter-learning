/**
 * 日期
 */

import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

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
  DateTime now = DateTime.now();
  TimeOfDay time = TimeOfDay(hour: 12, minute: 20);

  _showDatePicker() async {
    DateTime res = await showDatePicker(
      context: context,
      initialDate: this.now,
      firstDate: DateTime(1980),
      lastDate: DateTime(2020),
    );

    setState(() {
      this.now = res;
    });
  }
  _showTimePicker() async {
    TimeOfDay res = await showTimePicker(
      context: context,
      initialTime: this.time,
    );

    setState(() {
      this.time = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    // print(now);
    // // 时间戳 - 日期 转换
    // print(now.millisecondsSinceEpoch);
    // print(DateTime.fromMillisecondsSinceEpoch(1563795933742));
    // // 格式化
    // print(formatDate(DateTime(1989, 02, 21), [yyyy, '年', mm, '月', dd, '日']));

    return Scaffold(
      appBar: AppBar(
        title: Text('radio'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Row(
                  children: <Widget>[
                    Text('${formatDate(this.now, [yyyy, '年', mm, '月', dd, '日'])}'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: this._showDatePicker,
              ),
              InkWell(
                child: Row(
                  children: <Widget>[
                    Text('${this.time.format(context)}'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: this._showTimePicker,
              ),
            ],
          ),

        ],
      ),
    );
  }
}

