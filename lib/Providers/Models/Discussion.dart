import 'package:flutter/foundation.dart';
import 'package:refontnanews/Providers/Models/Message.dart';

class Discussion with ChangeNotifier {
  final int id;
  final List<Message> message;
  final String date;

  Discussion({this.id, this.message, this.date});
}
