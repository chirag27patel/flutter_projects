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
            height: 150,
            width: 150,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://scontent.fstv3-1.fna.fbcdn.net/v/t1.6435-9/131121279_3627834227255377_3270597907143300078_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_ohc=QLQSjH0TrPcAX9Vp7Vz&_nc_ht=scontent.fstv3-1.fna&oh=00_AT_GNBjANwimfeCg0G31HpOE6Efu7KK0KI-UCBhO7YXR_Q&oe=62D1BC2A"))),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            decoration: BoxDecoration(
              color: LableColor,
            ),
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
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
