import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      backgroundColor: bgColor,
      body: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            margin: EdgeInsets.only(top: 10, bottom: 10),
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 10,
                  )
                ],
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://scontent.fstv3-1.fna.fbcdn.net/v/t1.6435-9/131121279_3627834227255377_3270597907143300078_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_ohc=QLQSjH0TrPcAX9Vp7Vz&_nc_ht=scontent.fstv3-1.fna&oh=00_AT_GNBjANwimfeCg0G31HpOE6Efu7KK0KI-UCBhO7YXR_Q&oe=62D1BC2A"))),
          ),
          Text(
            "Chirag Patel".toUpperCase(),
            textAlign: TextAlign.end,
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.bold, color: LableColor),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              children: [
                Row(

                  children: [
                    Expanded(
                      child: DriverHomeLabels(
                        driverHomelabel: "Car Number",
                        driverHomeLabelDetails: "GJ-05-GF-8884",
                        iconData: FontAwesomeIcons.carOn,
                      ),
                    ),

                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          DriverHomeLabels(
                            driverHomelabel: "Owner Name",
                            driverHomeLabelDetails: "Chirag Patel",
                            iconData: Icons.person,
                          ),
                        ],

                      ),
                    ),
                  ],
                ),
                Row(

                  children: [
                    Expanded(
                      child: DriverHomeLabels(
                        driverHomelabel: "Car Type",
                        driverHomeLabelDetails: "Innova Crysta",
                        iconData: FontAwesomeIcons.carRear,
                      ),
                    ),


                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          DriverHomeLabels(
                            driverHomelabel: "Driver Name",
                            driverHomeLabelDetails: "Chirag Patel",
                            iconData: FontAwesomeIcons.users,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(

                  children: [
                    Expanded(
                      child: DriverHomeLabels(
                        driverHomelabel: "Duty Type",
                        driverHomeLabelDetails: "Monthly",
                        iconData: FontAwesomeIcons.book,
                      ),
                    ),
                    Expanded(
                      child: DriverHomeLabels(
                        driverHomelabel: "Department",
                        driverHomeLabelDetails: "C.S",
                        iconData: FontAwesomeIcons.buildingUser,
                      ),
                    ),
                  ],
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
      {required this.driverHomelabel, required this.driverHomeLabelDetails, required this.iconData});

  IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15,),
              child: Icon(
                  iconData
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  driverHomelabel,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: textColor),
                ),
                Text(
                  driverHomeLabelDetails,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: LableColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
