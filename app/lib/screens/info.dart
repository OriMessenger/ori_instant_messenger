import 'package:flutter/material.dart';
import 'package:app/widgets.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(context),
      body: Center(
        child: Column(children: <Widget>[
          Text(
            '2020г. Приложили ногу на создание ЭТОГО:',
            style: TextStyle(fontSize: 50),
          ),
          Text('ИТ-32БО'),
          Text('Колесников Семен'),
          Text('Иван Кузьмин'),
          Text('Хохлышева Оксана'),
          Text('Зенина Андрей'),
        ]),
      ),
    );
  }
}
