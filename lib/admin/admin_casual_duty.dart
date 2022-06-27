import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/components/custom_components.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminCasualDuty extends StatefulWidget {
  String appBarTitle;

  AdminCasualDuty({required this.appBarTitle});

  @override
  State<AdminCasualDuty> createState() => _AdminCasualDutyState();
}

class _AdminCasualDutyState extends State<AdminCasualDuty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: adminAppbarColor,
          elevation: 0.0,
          title: Text("${widget.appBarTitle} Casual Duties"),
          centerTitle: true,
        ),
        body: ListView.builder(
            padding: EdgeInsets.all(8.0),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(8.0),
                padding: EdgeInsets.only(
                    top: 8.0, bottom: 8.0, left: 12.0, right: 12.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: AdminCasualDutyList(
                                label: "From", labelDetails: "Gate No.1")),
                        Expanded(child: Container()),
                        Expanded(
                            child: AdminCasualDutyList(
                                label: "To", labelDetails: "Mumbai Airport ")),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: AdminCasualDutyList(
                              label: "Starting", labelDetails: "Jan 14, 2022"),
                        ),
                        Expanded(child: Container()),
                        Expanded(
                          child: AdminCasualDutyList(
                              label: "Ending", labelDetails: "Jan 14, 2022"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: AdminCasualDutyList(
                              label: "Starting Time", labelDetails: "08:00 AM"),
                        ),
                        Expanded(child: Container()),
                        Expanded(
                          child: AdminCasualDutyList(
                              label: "Ending Time", labelDetails: "08:00 AM"),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5.0,top: 5.0),
                          child: SizedBox(
                            height: 40,
                            width: 120,
                            child: CustomMaterialButton(
                                buttonText: "Details",
                                iconData: FontAwesomeIcons.list,
                                iconColor: Colors.white,
                                buttonColor: adminAppbarColor,
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
            }));
  }
}
