import 'package:flutter/material.dart';
import 'package:app/screens/profile.dart';
import 'package:app/screens/info.dart';

Widget MainAppBar(BuildContext context) {
  return AppBar(backgroundColor: Colors.black, title: Icon(Icons.add));
}

Widget profile(BuildContext context) {
  return Drawer(
    child: new ListView(
      children: <Widget>[
        new DrawerHeader(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            accountName: Text('Мистер Твистер'),
            accountEmail: Text("pizdyk@sooqa.ru"),
          ),
        ),
        new ListTile(
            title: new Text("Профиль"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            }),
        new ListTile(title: new Text("Настройки"), onTap: () {}),
        new ListTile(
            title: new Text("Информация"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => InfoPage()));
            }),
        new ListTile(
            title: new Text("Выйти"),
            onTap: () {
              Navigator.popUntil(context, ModalRoute.withName('/'));
            }),
      ],
    ),
  );
}
