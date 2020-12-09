import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app/screens/chatsPage.dart';

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
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      // Под логотип
                      ),
                  Text(
                    'ORI Messenger',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),

                  // Контейнер текстого поля логина и пароля
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          // Тень отбрасываемая полем
                        ]),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.white))),
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Логин",
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            obscureText: true,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Пароль",
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  // Кнопка Войти
                  Container(
                    alignment: Alignment.center,
                    child: RaisedButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 110),
                        color: Colors.white,
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatsPage()),
                          );
                        },
                        child: Text("Войти")),
                  ),
                  SizedBox(height: 10),
                  // Кнопка регистрации
                  Container(
                    alignment: Alignment.center,
                    child: RaisedButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 90),
                        color: Colors.white,
                        textColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        onPressed: () {
                          /* */
                        },
                        child: Text("Регистрация")),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
