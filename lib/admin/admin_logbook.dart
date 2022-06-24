import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/components/custom_raised_button.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminLogbook extends StatefulWidget {
  const AdminLogbook({Key? key}) : super(key: key);

  @override
  State<AdminLogbook> createState() => _AdminLogbookState();
}

class _AdminLogbookState extends State<AdminLogbook> {
  List<String> selectCar = ["Innova", "Swift", "Swift Dzire", "Xylo", "Tavera"];

  // Initial Selected Value
  String dropdownvalue = 'Innova';

  // List of items in our dropdown menu
  List<String> carList = [
    'Innova',
    'Innova Crysta',
    'Tavera',
    'Xylo',
    'Swift',
    'Swift Dzire',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, bottom: 5),
                  child: Text(
                    "Select Car",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: textColor, width: 2),
                    color: Colors.white),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: dropdownvalue,
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      size: 42,
                    ),
                    elevation: 16,
                    isExpanded: true,
                    hint: Text("Select Car"),
                    style: TextStyle(
                        color: textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                    items:
                        carList.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            Container(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, bottom: 5),
                  child: Text(
                    "Select Department",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: textColor, width: 2),
                    color: Colors.white),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: dropdownvalue,
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      size: 42,
                    ),
                    elevation: 16,
                    isExpanded: true,
                    hint: Text("Select Car"),
                    style: TextStyle(
                        color: textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                    items:
                        carList.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16.0),
                    child: SizedBox(
                      height: 60,
                      child: SignInButton(
                        color: adminAppbarColor,
                        borderRadius: BorderRadius.circular(5.0),
                        onPressed: () {},
                        textColor: Colors.white,
                        text: 'Search',
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
