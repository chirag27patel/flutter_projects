import 'package:flutter/material.dart';
import 'package:sejaltravels_2022/const/const.dart';

class DirverHome extends StatefulWidget {
  const DirverHome({Key? key}) : super(key: key);

  @override
  State<DirverHome> createState() => _DirverHomeState();
}

class _DirverHomeState extends State<DirverHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            decoration: BoxDecoration(
                gradient:const LinearGradient(
                  colors: [
                    unselectedIconColor,
                    LableColor,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(5.0)),
            child: Column(
              children: [
                DriverHomeLabels(
                  driverHomelabel: "Car Number",
                  driverHomeLabelDetails: "GJ-05-GF-8884",
                ),
                DriverHomeLabels(
                  driverHomelabel: "Owner Name",
                  driverHomeLabelDetails: "Chirag Patel",
                ),
                DriverHomeLabels(
                  driverHomelabel: "Driver Name",
                  driverHomeLabelDetails: "Chirag Patel",
                ),
                DriverHomeLabels(
                  driverHomelabel: "Car Type",
                  driverHomeLabelDetails: "Innova Crysta",
                ),
                DriverHomeLabels(
                  driverHomelabel: "Duty Type",
                  driverHomeLabelDetails: "Monthly",
                ),
                DriverHomeLabels(
                  driverHomelabel: "Department",
                  driverHomeLabelDetails: "MFF",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DriverHomeLabels extends StatelessWidget {
  String driverHomelabel;
  String driverHomeLabelDetails;

  DriverHomeLabels(
      {required this.driverHomelabel, required this.driverHomeLabelDetails});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Expanded(

            child: Text(
              driverHomelabel,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          Expanded(
            child: Text(
              driverHomeLabelDetails,
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
