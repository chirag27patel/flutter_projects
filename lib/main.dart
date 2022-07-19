import 'package:flutter/material.dart';
import 'package:sejaltravels_2022/SignInPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'dmsans',
        primarySwatch: Colors.blue,
      ),
      home: const SignInPage(),
    );
  }
}

