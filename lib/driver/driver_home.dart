import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/const/const.dart';
import 'package:sejaltravels_2022/driver/driverTrips.dart';
import 'package:sejaltravels_2022/driver/driver_diesel_data.dart';
import 'package:sejaltravels_2022/driver/driver_logbook.dart';
import 'package:sejaltravels_2022/driver/driver_logbook_history.dart';
import 'package:sejaltravels_2022/driver/driver_profile.dart';

class DriverHome extends StatefulWidget {
  const DriverHome({Key? key}) : super(key: key);

  @override
  State<DriverHome> createState() => _DriverHomeState();
}

class _DriverHomeState extends State<DriverHome>
    with SingleTickerProviderStateMixin {
   late Animation animation;
   late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );

    animation = CurvedAnimation(parent: controller, curve: Curves.bounceOut);
    controller.forward();

    animation.addListener(() {
      setState((){});
    });
  }

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(animation.value*5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: DriverHomeLabels2(
                        imagePath: "assets/images/user.png",
                        tabHeight: 120,
                        tabColor: Color(0xffff793f),
                        tabName: 'Profile',
                        tabFunction: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DriverProfile()));
                        },
                      )),
                      Expanded(
                          child: DriverHomeLabels2(
                        imagePath: "assets/images/log.png",
                        tabHeight: 120,
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
                        tabHeight: 120,
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
                        tabHeight: 120,
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
                        tabHeight: 120,
                        tabColor: Color(0xff27ae60),
                        tabName: 'History',
                        tabFunction: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DriverLogbookHistory()));
                        },
                      )),
                      Expanded(
                          child: DriverHomeLabels2(
                        imagePath: "assets/images/car.png",
                        tabHeight: 120,
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

          ],
        ),
      ),
    );
  }
}

class DriverHomeLabels2 extends StatelessWidget {
  DriverHomeLabels2({
    required this.imagePath,
    required this.tabName,
    required this.tabColor,
    required this.tabFunction,
    required this.tabHeight,
  });

  VoidCallback tabFunction;

  String imagePath;
  String tabName;
  Color tabColor;
  double tabHeight;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: tabHeight,

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
