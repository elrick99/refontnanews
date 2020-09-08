import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:refontnanews/Screens/Home_Screen.dart';
import 'package:refontnanews/Screens/video.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Widget> page = [
    HommeSrceen(),
    Center(
      child: Video(),
    ),
    Center(
      child: Text('Page3'),
    ),
    Center(
      child: Text('Page4'),
    )
  ];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_index],
      bottomNavigationBar: FloatingNavbar(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFF777FFF),
          unselectedItemColor: Color(0xff292929),
          onTap: (int val) => setState(() => _index = val),
          currentIndex: _index,
          items: <FloatingNavbarItem>[
            FloatingNavbarItem(
                icon: Icon(
                  Icons.replay,
                  color: (_index == 0) ? Color(0xFF777FFF) : Colors.grey,
                ),
                title: 'Rafraichir'),
            FloatingNavbarItem(
                icon: Icon(
                  Icons.video_label,
                  color: (_index == 1) ? Color(0xFF777FFF) : Colors.grey,
                ),
                title: 'Video'),
            FloatingNavbarItem(
                icon: Icon(
                  Icons.video_library,
                  color: (_index == 2) ? Color(0xFF777FFF) : Colors.grey,
                ),
                title: 'Clips'),
            FloatingNavbarItem(
                icon: Icon(
                  Icons.person,
                  color: (_index == 3) ? Color(0xFF777FFF) : Colors.grey,
                ),
                title: 'Moi'),
          ]),
    );
  }
}
