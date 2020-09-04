import 'package:flutter/material.dart';

class AppBarDetail extends StatefulWidget {
  @override
  _AppBarDetailState createState() => _AppBarDetailState();
}

class _AppBarDetailState extends State<AppBarDetail> {
  static const stateItems = <String>[
    'Favoris',
    'Partager',
    'Signaler',
    'Text',
  ];

  final List<PopupMenuItem<String>> _dropDownMenuItems = stateItems
      .map((String values) => PopupMenuItem<String>(
            value: values,
            child: Text(values),
          ))
      .toList();
  String _btnSelectedVal = 'Neuf';

  bool siteWeb = false;
  bool appliWeb = true;

  Widget siteWebButton() {
    return InkWell(
      onTap: () {
        setState(() {
          appliWeb = true;
          siteWeb = false;
          print(2);
        });
      },
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Icon(Icons.format_align_left, color: Color(0xFF777FFF)),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
            )),
      ),
    );
  }

  Widget appliWebButton() {
    return InkWell(
      onTap: () {
        setState(() {
          appliWeb = false;
          siteWeb = true;
          print(1);
        });
      },
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Icon(Icons.format_align_left, color: Colors.white),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.01),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height / 7,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Color(0xFF777FFF)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: null),
                  Container(
                    height: 35,
                    width: 200,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: Center(
                                child: Text(
                              'Bonjour',
                              style: TextStyle(color: Colors.white),
                            ))),
                        Expanded(
                            child: (appliWeb == true)
                                ? appliWebButton()
                                : siteWebButton())
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  PopupMenuButton<String>(
                      icon: Icon(Icons.more_horiz, color: Colors.white),
                      onSelected: (String newValue) {
                        setState(() {
                          _btnSelectedVal = newValue;
                          print(_btnSelectedVal);
                        });
                      },
                      itemBuilder: (_) => this._dropDownMenuItems)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
