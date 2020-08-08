import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/challenges/challenge_1.dart';
import 'package:flutter_ui_challenges/challenges/challenge_2.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': HomePage.route,
        '/1': Challenge1.route,
        '/2': Challenge2.route,
      },
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
    );
  }
}
