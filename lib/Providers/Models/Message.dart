import 'package:flutter/foundation.dart';

class Message with ChangeNotifier {
  final int id;
  final String iduser;
  final String idreceiver;
  final String message;
  final String date;

  Message({this.id, this.iduser, this.idreceiver, this.message, this.date});
}
