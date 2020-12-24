import 'package:flutter/material.dart';
import 'package:app/widgets.dart';
import 'package:app/screens/login.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ORI Messenger",
              style: TextStyle(
                color: Colors.black,
                fontSize: 48,
              ),
            ),
            Container(
              width: 300,
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Логин',
                  hintStyle: TextStyle(color: Colors.black),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ),
            ),
            Container(
              width: 300,
              child: TextField(
                style: TextStyle(color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Пароль',
                  hintStyle: TextStyle(color: Colors.black),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              width: 300,
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: Text("Зарегистрироваться",
                  style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 5),
            Container(
              alignment: Alignment.center,
              child: InkWell(
                child: new Text('Уже зарегестрированы?'),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
