import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminLogbook extends StatefulWidget {
  const AdminLogbook({Key? key}) : super(key: key);

  @override
  State<AdminLogbook> createState() => _AdminLogbookState();
}

class _AdminLogbookState extends State<AdminLogbook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: adminAppbarColor,
        elevation: 0.0,
        title: Text("Admin Logbook"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black87,width: 1),
              borderRadius: BorderRadius.circular(5.0)
            ),
            child: Row(
              children: [
                Expanded(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      iconSize: 0.0,
                      style: TextStyle(color: Colors.black),
                      underline: SizedBox(),
                      items: <String>['A', 'B', 'C', 'D'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                ),
                Icon(Icons.arrow_drop_down_outlined),
              ],
            ),
          )
        ],
      ),
    );
  }
}
