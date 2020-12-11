import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lapiaf/pages/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //elemento raíz de la app
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//Full screen con temporizador
class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'images/back.png',
        fit: BoxFit.fill,
      ),
    );
  }
}
