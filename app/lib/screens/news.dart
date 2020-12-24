import 'package:flutter/material.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 1),
              height: 70.0,
              color: Colors.black,
              child: Container(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.photo),
                      iconSize: 25.0,
                      color: Colors.black,
                      onPressed: () {},
                    ),
                    Expanded(
                      child: TextField(
                        textCapitalization: TextCapitalization.sentences,
                        onChanged: (value) {},
                        decoration: InputDecoration.collapsed(
                          hintText: 'Поделитесь своей новостью',
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.send),
                      iconSize: 25.0,
                      color: Colors.black,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Вот тут должны быть новости
          Expanded(
            flex: 10,
            child: OrientationBuilder(
              builder: (context, orientation) => Container(
                color: Colors.white,
                child: Center(
                  child: Text(
                    'А как новости, пук',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
