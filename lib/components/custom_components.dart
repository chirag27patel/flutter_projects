import 'package:flutter/material.dart';
import 'package:sejaltravels_2022/const/const.dart';

class Totals extends StatelessWidget {
  String label, total;

  Totals({Key? key, required this.label, required this.total})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              color: Color(0xfff3f3f3),
            ),
          ),
        ),
        Text(
          total,
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xfff3f3f3),
          ),
        ),
      ],
    );
  }
}

class TextFieldLabels extends StatelessWidget {
  final String labels;

  TextFieldLabels({required this.labels});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, top: 15, bottom: 5),
      child: Text(
        labels,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: unselectedIconColor),
      ),
    );
  }
}

class DriverHomeLabels extends StatelessWidget {
  String driverHomelabel;
  String driverHomeLabelDetails;

  DriverHomeLabels(
      {required this.driverHomelabel,
        required this.driverHomeLabelDetails,
        required this.iconData});

  IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 15,
              ),
              child: Icon(iconData),
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


/*Container(
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
          ),*/