import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/components/custom_components.dart';
import 'package:sejaltravels_2022/const/const.dart';
import 'package:sejaltravels_2022/driver/driver_car_document_list.dart';

class DriverProfile extends StatefulWidget {
  const DriverProfile({Key? key}) : super(key: key);

  @override
  State<DriverProfile> createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> {
  String imageUrl =
      "https://scontent.fstv3-1.fna.fbcdn.net/v/t1.6435-9/131121279_3627834227255377_3270597907143300078_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_ohc=QLQSjH0TrPcAX9F78Bl&_nc_ht=scontent.fstv3-1.fna&oh=00_AT-m_A0Q2feFnmYBvitmLrMEn7itGa8A_ZGgO-PfoOuG4g&oe=62D1BC2A";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: LableColor,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 120,
                width: 120,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.black54, blurRadius: 10)
                    ],
                    shape: BoxShape.circle,
                    image: DecorationImage(image: NetworkImage(imageUrl))),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                DriverHomeLabels(
                  driverHomelabel: "Owner Name",
                  driverHomeLabelDetails: "Chirag Patel",
                  iconData: Icons.person,
                ),
                DriverHomeLabels(
                  driverHomelabel: "Driver Name",
                  driverHomeLabelDetails: "Chandresh Saddiwala",
                  iconData: FontAwesomeIcons.users,
                ),
              ]),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: Column(
              children: [
                Column(
                  children: [
                    DriverHomeLabels2(
                      driverHomelabel: "Car Number",
                      driverHomeLabelDetails: "GJ-05-GF-8884",
                      iconData: FontAwesomeIcons.carOn,
                    ),
                    DriverHomeLabels2(
                      driverHomelabel: "Car Type",
                      driverHomeLabelDetails: "Innova Crysta",
                      iconData: FontAwesomeIcons.carRear,
                    ),
                    DriverHomeLabels2(
                      driverHomelabel: "Duty Type",
                      driverHomeLabelDetails: "Monthly",
                      iconData: FontAwesomeIcons.book,
                    ),
                    DriverHomeLabels2(
                      driverHomelabel: "Department",
                      driverHomeLabelDetails: "C.S",
                      iconData: FontAwesomeIcons.buildingUser,
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Material(
              borderRadius: BorderRadius.circular(5.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: LableColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Edit Details".toUpperCase(),
                        style: TextStyle(
                            fontSize: 14,
                            color: LableColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 20,
                      ),
                      Icon(
                        FontAwesomeIcons.pen,
                        color: LableColor,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Material(
              color: LableColor,
              borderRadius: BorderRadius.circular(5.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DriverCarDocumentList()));
                },
                child: Container(
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Upload Documents".toUpperCase(),
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 20,
                      ),
                      Icon(
                        FontAwesomeIcons.fileCircleCheck,
                        color: Colors.white,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
