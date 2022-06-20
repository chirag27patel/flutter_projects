import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  _AdminHomeState createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: adminAppbarColor,
        elevation: 0.0,
        title: Text("Admin Home"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 6.0, left: 8),
                  child: Text(
                    "Today's Casual Trips",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 4.0,),
              child: Row(
                children: [
                  AdminHomeTab(
                    imagePath: "assets/images/landt.png",
                    label: "L&T",
                    labelDetails: "22",
                    tabColor: Colors.yellow.shade600,
                    tabTextColor: Colors.white,
                  ),
                  AdminHomeTab(
                    imagePath: "assets/images/amns.png",
                    label: "AM/NS",
                    labelDetails: "22",
                    tabColor: Colors.redAccent.shade200,
                    tabTextColor: Colors.white,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 8),
                  child: Text(
                    "Monthly Car Details",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 4.0,right: 4.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      AdminHomeTab(
                        imagePath: "assets/images/car.png",
                        label: "Car List",
                        labelDetails: "22",
                        tabColor: Colors.lightBlueAccent,
                        tabTextColor: Colors.white,
                      ),
                      AdminHomeTab(
                        imagePath: "assets/images/documentlist.png",
                        label: "Car Documetns",
                        labelDetails: "22",
                        tabColor: Colors.orangeAccent,
                        tabTextColor: Colors.red.shade800,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      AdminHomeTab(
                        imagePath: "assets/images/casual_duty.png",
                        label: "Casual Duty",
                        labelDetails: "22",
                        tabColor: Colors.teal,
                        tabTextColor: Colors.white,
                      ),
                      AdminHomeTab(
                        imagePath: "assets/images/log.png",
                        label: "Logbook",
                        labelDetails: "22",
                        tabColor: Colors.redAccent,
                        tabTextColor: Colors.white,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      AdminHomeTab(
                        imagePath: "assets/images/fuel.png",
                        label: "Diesel",
                        labelDetails: "27",
                        tabColor: Colors.blueGrey,
                        tabTextColor: Colors.white,
                      ),
                      AdminHomeTab(
                        imagePath: "assets/images/clock.png",
                        label: "Logbook History",
                        labelDetails: "00",
                        tabColor: Colors.orange.shade800,
                        tabTextColor: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AdminHomeTab extends StatelessWidget {
  String label;
  String labelDetails;
  String imagePath;
  Color tabColor;
  Color tabTextColor;

  AdminHomeTab(
      {required this.label,
      required this.labelDetails,
      required this.imagePath,
      required this.tabColor,
      required this.tabTextColor,
      });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 4.0, right: 4.0, top: 4.0, bottom: 4.0),
        child: Material(
          borderRadius: BorderRadius.circular(5.0),
          color: tabColor,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(5.0),
            splashColor: Colors.black87,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 4.0),
                  child: Image.asset(
                    imagePath,
                    height: 100,
                    width: 50,

                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5, top: 16, bottom: 0, right: 0),
                      child: Text(
                        label,
                        style: TextStyle(fontSize: 14, color: tabTextColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5, top: 0, bottom: 16, right: 0),
                      child: Text(
                        labelDetails,
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                            color: tabTextColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
