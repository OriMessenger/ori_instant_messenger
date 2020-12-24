import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:app/widgets.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(context),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Column(children: <Widget>[
            Container(
              alignment: Alignment.center,
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.70,
              width: MediaQuery.of(context).size.width * 0.50,
              child: Text(
                'Кто',
                style: TextStyle(fontSize: 50),
              ),
            ),
            Text(
              'А главное почему',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ]),
        ),
      ),
    );
  }
}
