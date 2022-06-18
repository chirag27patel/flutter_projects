import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/components/custom_components.dart';
import 'package:sejaltravels_2022/const/const.dart';


class DriverProfile extends StatefulWidget {
  const DriverProfile({Key? key}) : super(key: key);

  @override
  State<DriverProfile> createState() => _DriverProfileState();
}

class _DriverProfileState extends State<DriverProfile> {

  String imageUrl = "https://scontent.fstv3-1.fna.fbcdn.net/v/t1.6435-9/131121279_3627834227255377_3270597907143300078_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_ohc=QLQSjH0TrPcAX9F78Bl&_nc_ht=scontent.fstv3-1.fna&oh=00_AT-m_A0Q2feFnmYBvitmLrMEn7itGa8A_ZGgO-PfoOuG4g&oe=62D1BC2A";

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 10
                    )
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(image: NetworkImage(imageUrl))
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: Column(
              children: [
                Row(

                  children: [
                    DriverHomeLabels(
                      driverHomelabel: "Car Number",
                      driverHomeLabelDetails: "GJ-05-GF-8884",
                      iconData: FontAwesomeIcons.carOn,
                    ),
                    Expanded(child: Container()),
                    DriverHomeLabels(
                      driverHomelabel: "Owner Name",
                      driverHomeLabelDetails: "Chirag Patel",
                      iconData: Icons.person,
                    ),
                  ],
                ),
                Row(

                  children: [
                    DriverHomeLabels(
                      driverHomelabel: "Car Type",
                      driverHomeLabelDetails: "Innova Crysta",
                      iconData: FontAwesomeIcons.carRear,
                    ),

                    Expanded(child: Container()),
                    DriverHomeLabels(
                      driverHomelabel: "Driver Name",
                      driverHomeLabelDetails: "Rashmikant",
                      iconData: FontAwesomeIcons.users,
                    ),
                  ],
                ),
                Row(

                  children: [
                    DriverHomeLabels(
                      driverHomelabel: "Duty Type",
                      driverHomeLabelDetails: "Monthly",
                      iconData: FontAwesomeIcons.book,
                    ),
                    Expanded(child: Container()),
                    DriverHomeLabels(
                      driverHomelabel: "Department",
                      driverHomeLabelDetails: "C.S",
                      iconData: FontAwesomeIcons.buildingUser,
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
