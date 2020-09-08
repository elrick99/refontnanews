import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/clippers/chat_bubble_clipper_5.dart';

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
                child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: ListView(children: [
                getSenderView(
                    ChatBubbleClipper5(type: BubbleType.sendBubble), context),
                getReceiverView(
                    ChatBubbleClipper5(type: BubbleType.receiverBubble),
                    context),
                getSenderView(
                    ChatBubbleClipper5(type: BubbleType.sendBubble), context),
              ]),
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

  getSenderView(CustomClipper clipper, BuildContext context) => ChatBubble(
        clipper: clipper,
        alignment: Alignment.topRight,
        margin: EdgeInsets.only(top: 20),
        backGroundColor: Color(0xFF777FFF),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          child: Column(
            children: [
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '14h11 min',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              )
            ],
          ),
        ),
      );

  getReceiverView(CustomClipper clipper, BuildContext context) => ChatBubble(
        clipper: clipper,
        backGroundColor: Color(0xffE7E7ED),
        margin: EdgeInsets.only(top: 20),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          child: Column(
            children: [
              Text(
                "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '14h11 min',
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                ],
              )
            ],
          ),
        ),
      );
}
