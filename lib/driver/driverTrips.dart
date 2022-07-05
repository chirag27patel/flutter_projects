import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/components/custom_components.dart';
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
              duration: const Duration(milliseconds: 500),
              child: ScaleAnimation(
                child: DriverCasualDutyList(
                  from: "Gate No.1",
                  to: "Mumbai",
                  companyName: "L&T",
                  startingDate: "Jan 14,2022",
                  endingDate: "Jan 14,2022",
                  startingTime: "08:00 AM",
                  endingTime: "08:00 PM",
                  mobileNumber: "8141934349",
                  userName: "Chirag Patel",
                  imagePath: "assets/images/amns.png",
                ),
              ),
            );
          }),
    );
  }
}





//list design
class DriverCasualDutyList extends StatelessWidget {
  String from = "";
  String to = "";
  String userName = "";
  String mobileNumber = "";
  String startingDate = "";
  String endingDate = "";
  String startingTime = "";
  String endingTime = "";
  String companyName = "";
  String imagePath = "";

  DriverCasualDutyList({
    required this.from,
    required this.to,
    required this.userName,
    required this.mobileNumber,
    required this.startingDate,
    required this.endingDate,
    required this.startingTime,
    required this.endingTime,
    required this.companyName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding:
          const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 12.0, right: 12.0),
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            opacity: 0.09,
            image: AssetImage(
              imagePath,
            ),
          ),
          borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child:
                      AdminCasualDutyList(label: "From", labelDetails: from)),
              Expanded(child: Container()),
              Expanded(
                  child: AdminCasualDutyList(label: "To", labelDetails: to)),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: AdminCasualDutyList(
                      label: "User Name", labelDetails: userName)),
              Expanded(child: Container()),
              Expanded(
                  child: AdminCasualDutyList(
                      label: "Mobile", labelDetails: mobileNumber)),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: AdminCasualDutyList(
                    label: "Starting", labelDetails: startingDate),
              ),
              Expanded(child: Container()),
              Expanded(
                child: AdminCasualDutyList(
                    label: "Ending", labelDetails: endingDate),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: AdminCasualDutyList(
                    label: "Starting Time", labelDetails: startingTime),
              ),
              Expanded(child: Container()),
              Expanded(
                child: AdminCasualDutyList(
                    label: "Ending Time", labelDetails: endingTime),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AdminCasualDutyList(label: "Company", labelDetails: companyName),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0, top: 5.0),
                child: SizedBox(
                  height: 40,
                  width: 120,
                  child: CustomMaterialButton(
                      function: () {},
                      buttonText: "Details",
                      iconData: FontAwesomeIcons.list,
                      iconColor: Colors.white,
                      buttonColor: LabelColor,
                      borderRadius: 5.0,
                      buttonHeight: 35,
                      textHeight: 14),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
