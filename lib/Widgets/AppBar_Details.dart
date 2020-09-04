import 'package:flutter/material.dart';

class AppBarDetail extends StatefulWidget {
  @override
  _AppBarDetailState createState() => _AppBarDetailState();
}

class _AppBarDetailState extends State<AppBarDetail> {
  bool siteWeb = false;
  bool appliWeb = true;
  // Widget siteWeb(){}
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
                            child: InkWell(
                          onTap: () {
                            appliWeb = true;
                            siteWeb = false;
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: Icon(Icons.format_align_left,
                                color: Color(0xFF777FFF)),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                )),
                          ),
                        ))
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  IconButton(
                      icon: Icon(Icons.more_horiz, color: Colors.white),
                      onPressed: null)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
