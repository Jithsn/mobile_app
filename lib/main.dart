import 'package:fifth/fourth.dart';
import 'package:fifth/second.dart';
import 'package:fifth/third.dart';
import 'package:flutter/material.dart';

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
      ),
      home: Second(),
      debugShowCheckedModeBanner: false,
    );
  }
}
