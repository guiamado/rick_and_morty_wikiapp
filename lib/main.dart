import 'package:flutter/material.dart';
import 'package:rickandmorty/design/Splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        accentColor: const Color(0xff8bc6c0),
      ),
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
