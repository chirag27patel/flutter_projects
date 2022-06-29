// ignore_for_file: must_be_immutable

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
      padding: const EdgeInsets.only(
        right: 5,
        top: 10,
        bottom: 10,
      ),
      child: Container(
        child: Row(
          children: [
            Icon(
              iconData,
              color: LabelColor,
              size: 22,
            ),
            Container(
              width: 8,
            ),
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
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: LabelColor,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Icon(
                  iconData,
                  size: 20,
                  color: textColor,
                ),
              ),
              Text(
                driverHomelabel,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 16, color: textColor),
              ),
            ],
          ),
          Text(
            driverHomeLabelDetails,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: LabelColor,
            ),
          ),
        ],
      ),
    );
  }
}

class AdminHomeTab extends StatelessWidget {
  String label;
  String labelDetails;
  String imagePath;
  Color tabColor;
  Color tabTextColor;
  double textSize;
  VoidCallback onTap;

  AdminHomeTab({
    required this.label,
    required this.labelDetails,
    required this.imagePath,
    required this.tabColor,
    required this.tabTextColor,
    required this.textSize,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 4.0, right: 4.0, top: 4.0, bottom: 4.0),
        child: Material(
          borderRadius: BorderRadius.circular(5.0),
          color: tabColor,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(5.0),
            splashColor: Colors.black87,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 4.0),
                  child: Image.asset(
                    imagePath,
                    height: 100,
                    width: 50,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5, top: 16, bottom: 0, right: 0),
                      child: Text(
                        label,
                        style: TextStyle(fontSize: 14, color: tabTextColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 5, top: 0, bottom: 16, right: 0),
                      child: Text(
                        labelDetails,
                        style: TextStyle(
                            fontSize: textSize,
                            fontWeight: FontWeight.w800,
                            color: tabTextColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AdminCasualDutyList extends StatelessWidget {
  String label;
  String labelDetails;

  AdminCasualDutyList({required this.label, required this.labelDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 4, right: 4, top: 4, bottom: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: textColor,
            ),
          ),
          Text(
            labelDetails,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomMaterialButton extends StatelessWidget {
  String buttonText;
  IconData iconData;
  Color iconColor;
  Color buttonColor;
  double borderRadius;
  double buttonHeight;
  double textHeight;


  CustomMaterialButton(
      {required this.buttonText,
      required this.iconData,
      required this.iconColor,
      required this.buttonColor,
      required this.borderRadius,
      required this.buttonHeight,
      required this.textHeight,
      });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: buttonColor,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.black,
        borderRadius: BorderRadius.circular(borderRadius),
        child: Container(
          height: buttonHeight,
          padding: EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                buttonText.toUpperCase(),
                style: TextStyle(
                    fontSize: textHeight,
                    color: iconColor,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: 10,
              ),
              Icon(
                iconData,
                color: iconColor,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AdminInvoiceLabel extends StatelessWidget {
  String label;
  String labelDetails;
  Color labelColor;

  AdminInvoiceLabel(
      {required this.label,
        required this.labelDetails,
        required this.labelColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(left: 8.0, top: 4.0, bottom: 4.0, right: 8.0),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 16),
          ),
          Text(
            labelDetails,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: labelColor),
          ),
        ],
      ),
    );
  }
}

class TextFieldLabel extends StatelessWidget {

  String textFieldLabel;


  TextFieldLabel({required this.textFieldLabel});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8,bottom: 4,left: 4),
          child: Text(textFieldLabel),
        ),
      ],
    );
  }
}