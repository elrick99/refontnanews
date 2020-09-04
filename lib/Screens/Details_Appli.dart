import 'package:flutter/material.dart';
import 'package:refontnanews/Widgets/AppBar_Details.dart';

class DetailAppli extends StatefulWidget {
  @override
  _DetailAppliState createState() => _DetailAppliState();
}

class _DetailAppliState extends State<DetailAppli> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: Column(
          children: [
            Container(
              height: 75,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.amber),
              child: AppBarDetail(),
            ),
            Expanded(child: Container(color: Colors.red))
          ],
        ),
      ),
    );
  }
}
