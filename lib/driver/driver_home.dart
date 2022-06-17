import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/const/const.dart';
import 'package:sejaltravels_2022/driver/driverBottombar.dart';
import 'package:sejaltravels_2022/driver/driver_diesel_data.dart';
import 'package:sejaltravels_2022/driver/driver_logbook.dart';
import 'package:sejaltravels_2022/driver/driver_logbook_history.dart';

class DirverHome extends StatefulWidget {
  const DirverHome({Key? key}) : super(key: key);

  @override
  State<DirverHome> createState() => _DirverHomeState();
}

class _DirverHomeState extends State<DirverHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: LableColor,
        elevation: 0.0,

      ),
      body: Container(
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: DriverHomeLabels2(
                  imagePath: "assets/images/car.png",
                  tabColor: Color(0xfff1c40f),
                  tabName: 'Profile',
                  tabFunction: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DriverLogbook()));
                  },
                )),
                Expanded(
                    child: DriverHomeLabels2(
                  imagePath: "assets/images/log.png",
                  tabColor: Color(0xffe67e22),
                  tabName: 'Logbook',
                      tabFunction: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DriverLogbook()));
                      },
                )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: DriverHomeLabels2(
                  imagePath: "assets/images/fuel.png",
                  tabColor: Color(0xff2980b9),
                  tabName: 'Diesel',
                      tabFunction: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DriverDiesel()));
                      },
                )),
                Expanded(
                    child: DriverHomeLabels2(
                  imagePath: "assets/images/casual_duty.png",
                  tabColor: Color(0xff1abc9c),
                  tabName: 'Casual Duties',
                      tabFunction: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DriverTrips()));
                      },
                )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: DriverHomeLabels2(
                  imagePath: "assets/images/clock.png",
                  tabColor: Color(0xff27ae60),
                  tabName: 'History',
                      tabFunction: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DriverLogbookHistory()));
                      },
                )),
                Expanded(
                    child: DriverHomeLabels2(
                  imagePath: "assets/images/car.png",
                  tabColor: Color(0xffF97F51),
                  tabName: 'Profile',
                      tabFunction: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DriverLogbook()));
                      },
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DriverHomeLabels2 extends StatelessWidget {
  DriverHomeLabels2(
      {required this.imagePath,
      required this.tabName,
      required this.tabColor,
      required this.tabFunction});

  VoidCallback tabFunction;

  String imagePath;
  String tabName;
  Color tabColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
      child: Material(
        color: tabColor,
        borderRadius: BorderRadius.circular(5.0),
        child: InkWell(
          splashColor: Colors.black54,
          borderRadius: BorderRadius.circular(5.0),
          onTap: tabFunction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Image.asset(
                  imagePath,
                  width: 60,
                  height: 60,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  tabName,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
