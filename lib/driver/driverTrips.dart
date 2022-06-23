import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/const/const.dart';

class DriverTrips extends StatefulWidget {
  const DriverTrips({Key? key}) : super(key: key);

  @override
  _DriverTripsState createState() => _DriverTripsState();
}

class _DriverTripsState extends State<DriverTrips> {
  double fontsize = 14.0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: LabelColor,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView.builder(
          itemCount: 5,
          padding: const EdgeInsets.all(8.0),
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 750),
              child: ScaleAnimation(
                child: DriverHomeList(
                  carType: "Swift",
                  destination: "Mumbai Airport",
                  rate: "14 rs",
                  tripType: "One way",
                ),
              ),
            );
          }),
    );
  }
}

//list design
class DriverHomeList extends StatelessWidget {
  String carType = "";
  String destination = "";

  String rate = "";
  String tripType = "";

  DriverHomeList(
      {required this.carType,
      required this.destination,
      required this.rate,
      required this.tripType});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        // border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Car And Price Widget
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(FontAwesomeIcons.car,
                      size: 35, color: LabelColor),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      carType,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: LabelColor),
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        "Final cost",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          "5000",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: LabelColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DottedLine(
                dashLength: 10,
                dashGapLength: 2,
                lineThickness: 2,
                direction: Axis.horizontal,
                dashColor: LabelColor,
                dashGapColor: Colors.white,
                lineLength: MediaQuery.of(context).size.width/1.2,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                const Icon(FontAwesomeIcons.locationDot,
                    size: 18, color: LabelColor),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      destination,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: LabelColor),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "12:30 PM",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: DottedLine(
                  dashLength: 10,
                  dashGapLength: 3,
                  lineThickness: 2,
                  direction: Axis.vertical,
                  dashColor: Colors.grey,
                  dashGapColor: Colors.white,
                  lineLength: 50,
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 25, top: 10, left: 10, right: 10),
            child: Row(
              children: [
                Icon(FontAwesomeIcons.locationDot,
                    size: 18, color: LabelColor),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      destination,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: LabelColor),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "12:30 PM",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
