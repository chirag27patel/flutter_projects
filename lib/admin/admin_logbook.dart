import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminLogbook extends StatefulWidget {
  const AdminLogbook({Key? key}) : super(key: key);

  @override
  State<AdminLogbook> createState() => _AdminLogbookState();
}

class _AdminLogbookState extends State<AdminLogbook> {
  List<String> selectCar = ["Innova", "Swift", "Swift Dzire", "Xylo", "Tavera"];

  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  List<String> carList = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: adminAppbarColor,
        elevation: 0.0,
        title: Text("Admin Logbook"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        ),
      ),
    );
  }
}
