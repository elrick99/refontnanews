import 'package:flutter/foundation.dart';

class Commentaire with ChangeNotifier {
  final int id;
  final String pseudo;
  final String date;
  final String commentaire;
  final int countLiked;
  final int countdisliked;

  Commentaire(
      {this.id,
      this.pseudo,
      this.date,
      this.commentaire,
      this.countLiked,
      this.countdisliked});
}
