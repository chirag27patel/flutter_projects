import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/components/custom_components.dart';
import 'package:sejaltravels_2022/components/custom_raised_button.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminCarList extends StatelessWidget {
  List<carDetails> carDetailsData = []
    ..add(carDetails(
        ownerName: "Chirag Patel",
        carNumber: "GJ-05-GF-8884",
        driverName: "Chirag Patel",
        carType: "Innova",
        dutyType: "Monthly",
        contactNo: "8141934349"))
    ..add(carDetails(
        ownerName: "Sanket Patel",
        carNumber: "GJ-05-JK-7027",
        driverName: "Rashmikant",
        carType: "Innova",
        dutyType: "Monthly",
        contactNo: "9879384143"))
    ..add(carDetails(
        ownerName: "Chirag Patel",
        carNumber: "GJ-05-GF-8884",
        driverName: "Chirag Patel",
        carType: "Innova",
        dutyType: "Monthly",
        contactNo: "8141934349"))
    ..add(carDetails(
        ownerName: "Chirag Patel",
        carNumber: "GJ-05-GF-8884",
        driverName: "Chirag Patel",
        carType: "Innova",
        dutyType: "Monthly",
        contactNo: "8141934349"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: adminAppbarColor,
        title: Text("Car List"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView.builder(
          itemCount: carDetailsData.length,
          padding: EdgeInsets.all(8.0),
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 500),
              child: ScaleAnimation(
                child: Container(
                  margin: EdgeInsets.only(
                      left: 4.0, right: 4.0, top: 8.0, bottom: 8.0),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          AdminCarListLabel(
                              carListLabel: "Car Owner",
                              carListLabelData:
                                  carDetailsData[index].ownerName,
                            alignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          AdminCarListLabel(
                              carListLabel: "Car Number",
                              carListLabelData:
                                  carDetailsData[index].carNumber,
                            alignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AdminCarListLabel(
                              carListLabel: "Car Type",
                              carListLabelData: carDetailsData[index].carType,
                            alignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          AdminCarListLabel(
                              carListLabel: "Duty Type",
                              carListLabelData: carDetailsData[index].dutyType,
                            alignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AdminCarListLabel(
                              carListLabel: "Driver Name",
                              carListLabelData:
                                  carDetailsData[index].driverName,
                            alignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          AdminCarListLabel(
                              carListLabel: "Contact No",
                              carListLabelData:
                                  carDetailsData[index].contactNo,
                            alignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(

                          children: [
                            Expanded(
                              child: CustomMaterialButton(
                                  function: (){},
                                  buttonText: "Document",
                                  iconData: FontAwesomeIcons.solidFolderClosed,
                                  iconColor: Colors.white,
                                  buttonColor: Color(0xff373334),
                                  borderRadius: 5.0,
                                  buttonHeight: 35,
                                  textHeight: 14),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: CustomMaterialButton(
                                  function: (){},
                                  buttonText: "Diesel",
                                  iconData: FontAwesomeIcons.gasPump,
                                  iconColor: Colors.black,
                                  buttonColor: Color(0xffC8D7D2),
                                  borderRadius: 5.0,
                                  buttonHeight: 35,
                                  textHeight: 14),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class AdminCarListLabel extends StatelessWidget {
  AdminCarListLabel(
      {required this.carListLabel, required this.carListLabelData, required this.alignment,required this.crossAxisAlignment});

  String carListLabel;
  String carListLabelData;
  MainAxisAlignment alignment;
  CrossAxisAlignment crossAxisAlignment;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 5,
          top: 5,
          bottom: 5,
        ),
        child: Row(
          mainAxisAlignment: alignment,
          children: [
            Column(
              crossAxisAlignment: crossAxisAlignment,
              children: [
                Text(
                  carListLabel,
                  style: TextStyle(fontSize: 16, color: textColor),
                ),
                Text(
                  carListLabelData,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class carDetails {
  String ownerName;
  String carNumber;
  String driverName;
  String carType;
  String dutyType;
  String contactNo;

  carDetails({
    required this.ownerName,
    required this.carNumber,
    required this.driverName,
    required this.carType,
    required this.dutyType,
    required this.contactNo,
  });
}
