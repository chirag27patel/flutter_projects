import 'package:flutter/material.dart';
import 'package:sejaltravels_2022/admin/admin_logbook_car_list.dart';
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

  //List of department
  List<String> departmentList = [
    "MFF",
    "PIPING",
    "HEAVY ENGINEERING",
    "TURBINE",
    "BOILER",
    "AM/NS",
    "ENGINEER INDIA LTD",
    "SOFT SHIPYARD"
  ];

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
        body: ListView.builder(
            itemCount: departmentList.length,
            padding: EdgeInsets.all(8.0),
            itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AdminLogbookCarList()));
            },
            child: Container(
              margin: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5.0),
                      bottomRight: Radius.circular(50.0),
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(50.0)
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      departmentList[index],
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: adminAppbarColor, shape: BoxShape.circle),
                    child: const Text(
                      "20",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
  }
}
