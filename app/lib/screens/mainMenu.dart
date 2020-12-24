import 'package:app/widgets.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/news.dart';
import 'package:app/screens/recentChats.dart';

// Ограничения для виджетов объявляются в родителях.
// Размеры (желаемые) задаются в самом виджете.
// Позиция виджета на экране устанавливается родителем

class MainMenu extends StatefulWidget {
  @override
  _MainMenu createState() => _MainMenu();
}

class _MainMenu extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    // Orientation deviceOrientation = MediaQuery.of(context).orientation;
    // Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MainAppBar(context),
      // Hamburger
      drawer: profile(context),
      body: Row(
        // Разметка под списов чатов и сами статичные чаты RecentChats
        children: [
          // Текущие чаты (Recent)
          Expanded(
            flex: 2,
            child: LayoutBuilder(
              builder: (context, constraints) => Container(
                color: Colors.black,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            RecentChats(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Правая часть страницы = лента
          News(),
        ],
      ),
    );
  }
}
