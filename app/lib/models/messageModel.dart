import 'userModel.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/id0.jpg',
);

// USERS
final User id1 = User(
  id: 1,
  name: 'Петя',
  imageUrl: 'assets/id0.jpg',
);
final User id2 = User(
  id: 2,
  name: 'Коля',
  imageUrl: '',
);
final User id3 = User(
  id: 3,
  name: 'Андрей',
  imageUrl: '',
);
final User id4 = User(
  id: 4,
  name: 'Лера',
  imageUrl: '',
);
final User id5 = User(
  id: 5,
  name: 'Катя',
  imageUrl: '',
);
final User id6 = User(
  id: 6,
  name: 'Вадим Сергееич',
  imageUrl: '',
);
final User id7 = User(
  id: 7,
  name: 'Steven',
  imageUrl: '',
);

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: id1,
    time: '5:30 PM',
    text: 'Привет ДРУГ, как дела!?!?!?!?!?',
    unread: true,
  ),
  Message(
    sender: id2,
    time: '4:30 PM',
    text: 'Замечания в файле',
    unread: true,
  ),
  Message(
    sender: id3,
    time: '3:30 PM',
    text: 'Курлык',
    unread: false,
  ),
  Message(
    sender: id4,
    time: '2:30 PM',
    text: 'Ну как там с деньгами',
    unread: true,
  ),
  Message(
    sender: id5,
    time: '1:30 PM',
    text: 'ы',
    unread: false,
  ),
  Message(
    sender: id6,
    time: '12:30 PM',
    text: '))))))))))))))))))))))))))))))))))))))))))))',
    unread: false,
  ),
  Message(
    sender: id7,
    time: '11:30 AM',
    text: 'Пефка бы',
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: id1,
    time: '5:30 PM',
    text: 'Контуженый',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Что да',
    unread: true,
  ),
  Message(
    sender: id1,
    time: '3:45 PM',
    text: 'Да',
    unread: true,
  ),
  Message(
    sender: id1,
    time: '3:15 PM',
    text: 'НУ ЛАДНО. Когда пиво пить',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'НОРМАЛЬНОфыущоцйщулоцщлутаь, а че',
    unread: true,
  ),
  Message(
    sender: id1,
    time: '2:00 PM',
    text: 'ДРУГ как дела?',
    unread: true,
  ),
];
