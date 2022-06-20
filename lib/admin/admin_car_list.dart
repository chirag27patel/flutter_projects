import 'package:flutter/material.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminCarList extends StatelessWidget {
  List<carDetails> carDetailsData = []
    ..add(carDetails(
        ownerName: "Chirag Patel",
        carNumber: "Gj-05-GF-8884",
        driverName: "Chirag Patel",
        carType: "Innova",
        dutyType: "Monthly",
        contactNo: "8141934349"))
    ..add(carDetails(
        ownerName: "Sanket Patel",
        carNumber: "Gj-05-JK-7027",
        driverName: "Rashmikant",
        carType: "Innova",
        dutyType: "Monthly",
        contactNo: "9879384143"))
    ..add(carDetails(
        ownerName: "Chirag Patel",
        carNumber: "Gj-05-GF-8884",
        driverName: "Chirag Patel",
        carType: "Innova",
        dutyType: "Monthly",
        contactNo: "8141934349"))
    ..add(carDetails(
        ownerName: "Chirag Patel",
        carNumber: "Gj-05-GF-8884",
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
            return Container(
              margin:
                  EdgeInsets.only(left: 4.0, right: 4.0, top: 8.0, bottom: 8.0),
              padding: EdgeInsets.all(5),
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
                          carListLabelData: carDetailsData[index].ownerName),
                      AdminCarListLabel(
                          carListLabel: "Car No.",
                          carListLabelData: carDetailsData[index].carNumber),
                      AdminCarListLabel(
                          carListLabel: "Driver Name",
                          carListLabelData: carDetailsData[index].driverName),
                    ],
                  ),
                  Row(
                    children: [
                      AdminCarListLabel(
                          carListLabel: "Car Type",
                          carListLabelData: carDetailsData[index].carType),
                      AdminCarListLabel(
                          carListLabel: "Duty Type",
                          carListLabelData: carDetailsData[index].dutyType),
                      AdminCarListLabel(
                          carListLabel: "Contact No",
                          carListLabelData: carDetailsData[index].contactNo),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}

class AdminCarListLabel extends StatelessWidget {
  AdminCarListLabel(
      {required this.carListLabel, required this.carListLabelData});

  String carListLabel;
  String carListLabelData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 5,
          top: 5,
          bottom: 5,
        ),
        child: Column(
          children: [
            Text(
              carListLabel,
              style: TextStyle(fontSize: 14, color: textColor),
            ),
            Text(
              carListLabelData,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
