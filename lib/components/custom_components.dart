import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      padding: const EdgeInsets.only(right: 5, top: 10, bottom: 10, left: 20),
      child: Container(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  driverHomelabel,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: textColor),
                ),
                Text(
                  driverHomeLabelDetails,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: LableColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DriverHomeLabels2 extends StatelessWidget {
  String driverHomelabel;
  String driverHomeLabelDetails;

  DriverHomeLabels2(
      {required this.driverHomelabel,
      required this.driverHomeLabelDetails,
      required this.iconData});

  IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10, left: 10),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Icon(iconData, size: 20, color: textColor,),
                ),
                Text(
                  driverHomelabel,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 16,  color: textColor),
                ),
              ],
            ),
            Text(
              driverHomeLabelDetails,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: LableColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
