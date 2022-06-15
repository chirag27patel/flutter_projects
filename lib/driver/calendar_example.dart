import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/const/const.dart';
import 'package:sejaltravels_2022/driver/driver_mothLogbook_data.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarExample extends StatefulWidget {
  const CalendarExample({Key? key}) : super(key: key);

  @override
  State<CalendarExample> createState() => _CalendarExampleState();
}

class _CalendarExampleState extends State<CalendarExample> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  int startingKm = 12546;
  int endingKm = 12610;
  int totalKm = 0;


  CalendarFormat format = CalendarFormat.month;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(),
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
                }
                else{
                  totalKm = 0;

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
                        HistoryLabels(label: "Starting Date", labelDetails: "12-Jul-2022",labelColor: unselectedIconColor),
                        HistoryLabels(label: "Ending Date", labelDetails: "12-Jul-2022",labelColor: unselectedIconColor),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HistoryLabels(label: "Starting Time", labelDetails: "08:00 AM",labelColor: unselectedIconColor),
                        HistoryLabels(label: "Ending Time", labelDetails: "08:00 PM",labelColor: unselectedIconColor,),
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
