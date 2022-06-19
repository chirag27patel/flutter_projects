import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:sejaltravels_2022/const/const.dart';
import 'package:sejaltravels_2022/driver/driver_mothLogbook_data.dart';
import 'package:table_calendar/table_calendar.dart';

class DriverLogbookHistory extends StatefulWidget {
  const DriverLogbookHistory({Key? key}) : super(key: key);

  @override
  State<DriverLogbookHistory> createState() => _DriverLogbookHistoryState();
}

class _DriverLogbookHistoryState extends State<DriverLogbookHistory> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();



  int startingKm = 12546;
  int endingKm = 12610;
  int totalKm = 0;
  String startingDate = "-";
  String endingDate = "-";
  String startingTime = "-";
  String endingTime = "-";


  CalendarFormat format = CalendarFormat.month;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: LableColor,
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Logbook Histoy"),
      ),
      body: Column(
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
                if (_selectedDay.day == DateTime.now().day){
                  totalKm = endingKm - startingKm;
                  startingDate = DateFormat.yMMMMd('en_US').format(_selectedDay);
                  endingDate = DateFormat.yMMMMd('en_US').format(_selectedDay);
                  startingTime = "08:00 AM";
                  endingTime = "08:00 PM";

                }
                else{
                  totalKm = 0;
                  startingDate = "0";
                  endingDate = "0";
                  startingTime = "0";
                  endingTime = "0";
                }
              });
            },
            onFormatChanged: (CalendarFormat _format){
                setState((){
                  format = _format;
                });
            },
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            calendarStyle: const CalendarStyle(
              isTodayHighlighted: false,
              selectedDecoration: BoxDecoration(
                color: LableColor,
                shape: BoxShape.circle
              )
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15,right: 15,top: 7.5,bottom: 7.5),
            padding: EdgeInsets.only(top: 15,bottom: 15,right: 15,left: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0)
            ),
            child: Column(
              children: [
                Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HistoryLabels(label: "Starting Date", labelDetails: startingDate,labelColor: unselectedIconColor),
                        HistoryLabels(label: "Ending Date", labelDetails: endingDate,labelColor: unselectedIconColor),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HistoryLabels(label: "Starting Time", labelDetails: startingTime,labelColor: unselectedIconColor),
                        HistoryLabels(label: "Ending Time", labelDetails: endingTime,labelColor: unselectedIconColor,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HistoryLabels(label: "Starting Km", labelDetails: startingKm.toString(),labelColor: unselectedIconColor),
                        HistoryLabels(label: "Ending Km", labelDetails: endingKm.toString(),labelColor: unselectedIconColor,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HistoryLabels(label: "Total Time", labelDetails: "16:00",labelColor: Colors.redAccent),
                        HistoryLabels(label: "Total Km", labelDetails: totalKm.toString(),labelColor: Colors.redAccent),
                      ],
                    ),

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      color: LableColor,
                      borderRadius: BorderRadius.circular(5.0),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          height: 45,

                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("EDIT",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                              Container(
                                width: 20,
                              ),
                              Icon(FontAwesomeIcons.pen,color: Colors.white,size: 16,),
                            ],
                          ),
                        ),
                      ),
                    )
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
