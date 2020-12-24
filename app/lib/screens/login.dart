import 'package:app/screens/mainMenu.dart';
import 'package:app/screens/registration.dart';
import 'package:flutter/material.dart';
import 'package:app/theme.dart';
import 'package:app/widgets.dart';

import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var login = TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.mainBlack[800])),
          labelText: 'Логин',
          hoverColor: Colors.black),
      controller: controller,
    );

    _launchURL() async {
      const url = 'https://myaccount.google.com/?pli=1';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

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
              child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 140),
                  color: Colors.black,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainMenu()));
                  },
                  child: Text("Войти", style: TextStyle(color: Colors.white))),
            ),
            SizedBox(height: 5),
            Container(
              alignment: Alignment.center,
              child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 75),
                  color: Colors.black,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  onPressed: _launchURL,
                  child: Text("Войти с помощью Google",
                      style: TextStyle(color: Colors.white))),
            ),
            Container(
              alignment: Alignment.center,
              child: InkWell(
                child: new Text('Зарегестрироваться'),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegistrationPage())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
