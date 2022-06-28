import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/components/custom_components.dart';
import 'package:sejaltravels_2022/const/const.dart';
import 'package:table_calendar/table_calendar.dart';

class AdminCasualDutyHistory extends StatefulWidget {
  const AdminCasualDutyHistory({Key? key}) : super(key: key);

  @override
  State<AdminCasualDutyHistory> createState() => _AdminCasualDutyHistoryState();
}

class _AdminCasualDutyHistoryState extends State<AdminCasualDutyHistory> {
  DateTime _selectedDay = DateTime.now();
  CalendarFormat format = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  int itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: adminAppbarColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text("Casual Duties"),
      ),
      body: Container(
        child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              calendarFormat: format,
              focusedDay: _selectedDay,
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay; // update `_focusedDay` here as well
                  print("${_selectedDay} is selected day");
                  print("${_focusedDay} is selected day");

                  if (_focusedDay.day == DateTime.now().day) {
                    itemCount = 1;
                  } else {
                    itemCount = 3;
                  }
                });
              },
              onFormatChanged: (CalendarFormat _format) {
                setState(() {
                  format = _format;
                });
              },
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              calendarStyle: const CalendarStyle(
                  isTodayHighlighted: false,
                  selectedDecoration: BoxDecoration(
                      color: adminAppbarColor, shape: BoxShape.circle)),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: itemCount,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(8.0),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(8.0),
                      padding: EdgeInsets.only(
                          top: 8.0, bottom: 8.0, left: 12.0, right: 12.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            opacity: 0.09,
                            image: AssetImage("assets/images/landt.png"),
                          ),
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: AdminCasualDutyList(
                                      label: "From",
                                      labelDetails: "Gate No.1")),
                              Expanded(child: Container()),
                              Expanded(
                                  child: AdminCasualDutyList(
                                      label: "To",
                                      labelDetails: "Mumbai Airport ")),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: AdminCasualDutyList(
                                    label: "Starting",
                                    labelDetails: "Jan 14, 2022"),
                              ),
                              Expanded(child: Container()),
                              Expanded(
                                child: AdminCasualDutyList(
                                    label: "Ending",
                                    labelDetails: "Jan 14, 2022"),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: AdminCasualDutyList(
                                    label: "Starting Time",
                                    labelDetails: "08:00 AM"),
                              ),
                              Expanded(child: Container()),
                              Expanded(
                                child: AdminCasualDutyList(
                                    label: "Ending Time",
                                    labelDetails: "08:00 AM"),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AdminCasualDutyList(
                                  label: "Company", labelDetails: "L & T"),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 5.0, top: 5.0),
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
                  }),
            )
          ],
        ),
      ),
    );
  }
}
