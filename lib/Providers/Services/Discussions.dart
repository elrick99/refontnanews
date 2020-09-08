import 'package:flutter/foundation.dart';
import 'package:refontnanews/Providers/Models/Discussion.dart';
import 'package:refontnanews/Providers/Models/Message.dart';

class Discussions with ChangeNotifier {
  List<Discussion> _items = [
    Discussion(
        id: 0,
        message: [
          Message(
            id: 1,
            date: '10 min',
            iduser: '01',
            idreceiver: '05',
          ),
          Message(
            id: 1,
            date: '50 min',
            iduser: '01',
            idreceiver: '05',
          ),
        ],
        date: '5656')
  ];
}
