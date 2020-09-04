import 'package:flutter/foundation.dart';

class Information with ChangeNotifier {
  final int idInfo;
  final String title;
  final String description;
  final String image;
  final String siteWeb;
  final String url;
  final int countLike;
  final int countComment;
  final String date;

  Information(
      {this.idInfo,
      this.title,
      this.description,
      this.image,
      this.siteWeb,
      this.url,
      this.countLike,
      this.countComment,
      this.date});
}
