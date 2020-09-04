import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:refontnanews/Providers/Services/Informations.dart';
import 'package:refontnanews/Screens/Details_Appli.dart';
import 'package:refontnanews/Screens/Home_Screen.dart';
import 'package:refontnanews/Widgets/AppBar_Home.dart';
import 'package:refontnanews/Widgets/BottomBar.dart';
import 'package:refontnanews/Widgets/WebView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Informations(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        // home: WebWiew(),
        home: BottomBar(),
      ),
    );
  }
}
