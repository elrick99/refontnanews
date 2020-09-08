import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:refontnanews/Providers/Services/Chaines.dart';
import 'package:refontnanews/Providers/Services/Informations.dart';
import 'package:refontnanews/Providers/Services/details.dart';
import 'package:refontnanews/Screens/Details_Appli.dart';
import 'package:refontnanews/Screens/Discussion.dart';
import 'package:refontnanews/Screens/Home_Screen.dart';
import 'package:refontnanews/Screens/chainePays.dart';
import 'package:refontnanews/Screens/chainePaysB.dart';
import 'package:refontnanews/Screens/chainePaysC.dart';
import 'package:refontnanews/Screens/chainePaysCa.dart';
import 'package:refontnanews/Screens/chainePaysG.dart';
import 'package:refontnanews/Widgets/AppBar_Home.dart';
import 'package:refontnanews/Widgets/BottomBar.dart';
import 'package:refontnanews/Widgets/WebView.dart';
import 'package:refontnanews/Screens/coteD.dart';
import 'package:refontnanews/Screens/video.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Color(0xFF777FFF), //or set color with: Color(0xFF0000FF)
    ));
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Informations(),
        ),
        ChangeNotifierProvider.value(value: Chaines()),
        ChangeNotifierProvider.value(value: Details()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        // home: DIscussion(),
        home: BottomBar(),
        routes: {
          CoteD.routeName: (context) => CoteD(),
          "chainePaysCa": (context) => ChainePaysCa(),
          "chainePaysC": (context) => ChainePaysC(),
          "chainePaysB": (context) => ChainePaysB(),
          "chainePaysG": (context) => ChainePaysG(),
          "chainePays": (context) => ChainePays(),
        },
      ),
    );
  }
}
