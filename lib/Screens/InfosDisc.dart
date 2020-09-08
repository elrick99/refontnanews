import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF777FFF),
          title: Text("Boris"),
          actions: <Widget>[
            // IconButton(icon: Icon(Icons.call), onPressed: () {}),
            // IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: ListView(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Color(0xFF777FFF),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      )),
                  title: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                width: 150,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Bonjour"),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "16h45",
                                  style: TextStyle(fontSize: 10),
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                ),
                ListTile(
                  trailing: CircleAvatar(
                      backgroundColor: Color(0xFF777FFF),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      )),
                  title: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                width: 150,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      " deserunt voluptates!Soluta similique ipsa ex itaque minima saepe quae mollitia eveniet voluptatibus quas, amet deserunt laborum labore et quibusdam quia, totam esse ipsum ullam assumenda repellendus! Quos quaerat neque ipsam commodi."),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "16h45",
                                  style: TextStyle(fontSize: 10),
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                ),
                ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Color(0xFF777FFF),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      )),
                  title: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                width: 150,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      "voluptatibus quas, amet deserunt laborum labore et quibusdam quia, totam esse ipsum ullam assumenda repellendus! Quos quaerat neque ipsam commodi."),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "16h45",
                                  style: TextStyle(fontSize: 10),
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                ),
              ],
            )),
            Container(
              // color: Colors.grey,
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: <Widget>[
                  Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      child: TextField(
                        autofocus: false,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Tapez message",
                            prefixIcon: Icon(
                              Icons.mood,
                              color: Color(0xFF777FFF),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.camera_alt,
                                color: Color(0xFF777FFF),
                              ),
                              onPressed: () {},
                            )),
                      )),
                  SizedBox(width: 10),
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.send,
                        color: Color(0xFF777FFF),
                      ))
                ],
              ),
            )
          ],
        ));
  }
}
