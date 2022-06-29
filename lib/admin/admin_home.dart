import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/admin/admin_car_document.dart';
import 'package:sejaltravels_2022/admin/admin_car_list.dart';
import 'package:sejaltravels_2022/admin/admin_casual_duty.dart';
import 'package:sejaltravels_2022/admin/admin_casual_duty_history.dart';
import 'package:sejaltravels_2022/admin/admin_diesel_data.dart';
import 'package:sejaltravels_2022/admin/admin_invoice_department_list.dart';
import 'package:sejaltravels_2022/admin/admin_logbook.dart';
import 'package:sejaltravels_2022/components/custom_components.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  _AdminHomeState createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.elasticOut)
          ..addListener(() {
            setState(() {});
          });
    animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: adminAppbarColor,
        elevation: 0.0,
        title: const Text("Admin Home"),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {

              },
              child: Row(
                children: const [
                  Text("Logout",style: TextStyle(color: Colors.white),),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.rightFromBracket,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ],
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 16.0, left: 8),
                  child: Text(
                    "Today's Casual Trips",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                left: 4.0,
              ),
              child: Row(
                children: [
                  AdminHomeTab(
                    imagePath: "assets/images/landt.png",
                    label: "L&T",
                    labelDetails: "12",
                    tabColor: Colors.yellow.shade600,
                    tabTextColor: Colors.white,
                    textSize: animation.value * 28,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdminCasualDuty(
                                    appBarTitle: "L&T",
                                    companyImageBg: "assets/images/landt.png",
                                  )));
                    },
                  ),
                  AdminHomeTab(
                    imagePath: "assets/images/amns.png",
                    label: "AM/NS",
                    labelDetails: "4",
                    tabColor: Colors.lightBlue.shade400,
                    tabTextColor: Colors.white,
                    textSize: animation.value * 28,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdminCasualDuty(
                                    appBarTitle: "AM/NS",
                                    companyImageBg: "assets/images/amns.png",
                                  )));
                    },
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 12.0, left: 8),
                  child: Text(
                    "Monthly Car Details",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 4.0, right: 4.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      AdminHomeTab(
                        imagePath: "assets/images/car.png",
                        label: "Car List",
                        labelDetails: "22",
                        tabColor: Color(0xffFEA47F),
                        tabTextColor: Colors.white,
                        textSize: animation.value * 28,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdminCarList()));
                        },
                      ),
                      AdminHomeTab(
                        imagePath: "assets/images/documentlist.png",
                        label: "Car Documetns",
                        labelDetails: "22",
                        tabColor: Colors.red.shade500,
                        tabTextColor: Colors.white,
                        textSize: animation.value * 28,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdminCarDocument()));
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      AdminHomeTab(
                        imagePath: "assets/images/casual_duty.png",
                        label: "Casual Duty",
                        labelDetails: "05",
                        tabColor: Color(0xff58B19F),
                        tabTextColor: Colors.white,
                        textSize: animation.value * 28,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AdminCasualDutyHistory()));
                        },
                      ),
                      AdminHomeTab(
                        imagePath: "assets/images/log.png",
                        label: "Logbook",
                        labelDetails: "32",
                        tabColor: Colors.cyan,
                        tabTextColor: Colors.white,
                        textSize: animation.value * 28,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdminLogbook()));
                        },
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
                        textSize: animation.value * 28,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdminDieselData()));
                        },
                      ),
                      AdminHomeTab(
                        imagePath: "assets/images/clock.png",
                        label: "Logbook History",
                        labelDetails: "00",
                        tabColor: Colors.orange.shade800,
                        tabTextColor: Colors.white,
                        textSize: animation.value * 28,
                        onTap: () {},
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      AdminHomeTab(
                        imagePath: "assets/images/invoice.png",
                        label: "Invoices",
                        labelDetails: "22",
                        tabColor: Colors.green.shade400,
                        tabTextColor: Colors.white,
                        textSize: animation.value * 28,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdminInvoiceDepartment()));
                        },
                      ),
                      Expanded(child: Container()),
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
