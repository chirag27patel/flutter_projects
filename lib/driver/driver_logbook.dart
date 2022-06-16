import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:sejaltravels_2022/components/custom_components.dart';
import 'package:sejaltravels_2022/components/custom_raised_button.dart';
import 'package:sejaltravels_2022/components/custom_textfield.dart';
import 'package:sejaltravels_2022/const/const.dart';
import 'package:sejaltravels_2022/driver/driver_logbook_history.dart';
import 'package:sejaltravels_2022/driver/driver_mothLogbook_data.dart';

class DriverLogbook extends StatefulWidget {
  const DriverLogbook({Key? key}) : super(key: key);

  @override
  State<DriverLogbook> createState() => _DriverLogbookState();
}

class _DriverLogbookState extends State<DriverLogbook> {
  DateTime now = DateTime.now();
  DateTime selectedDate = DateTime.now();
  DateTime selectedDate2 = DateTime.now();
  String? startingDate, finalDate, finalTime;
  String? endingDate, finalDate2, finalTime2;
  String timeDifference = "00:00";

  TimeOfDay _startingTime = const TimeOfDay(hour: 08, minute: 00);
  TimeOfDay _endingTime = const TimeOfDay(hour: 08, minute: 00);

  late String formatter = DateFormat('yMMMMd').format(now);

  TextEditingController startingKmController = TextEditingController();
  TextEditingController endingKmController = TextEditingController();
  TextEditingController startingTime = TextEditingController();
  TextEditingController endingTime = TextEditingController();

  String totalKm = "0";
  String to = "";

  @override
  void initState() {
    startingKmController.addListener(() {
      setState(() {});
    });
    endingKmController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  //Starting Date Function
  Future<DateTime?> selectDate() async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2022),
        lastDate: DateTime(2030));

    if (picked != null) {
      setState(() {
        selectedDate = picked;
        _selectTime();
      });
    }
    return null;
  }

  //Ending Date Function
  Future<DateTime?> selectDate2() async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate2,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2022),
        lastDate: DateTime(2030));

    if (picked != null) {
      setState(() {
        selectedDate2 = picked;
        _selectTime2();
      });
    }
    return null;
  }

  //Starting Time Select Function
  Future<DateTime?> _selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _startingTime,
    );
    if (picked != null) {
      setState(() {
        _startingTime = picked;

        finalDate = DateFormat.yMMMMd('en_US').format(selectedDate);
        finalTime = _startingTime.format(context).toString();
        startingDate = "$finalDate${"       "}$finalTime";

        startingTime.text = startingDate.toString();
      });
    }
    return null;
  }

  //EndingTime Date Function
  Future<DateTime?> _selectTime2() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _endingTime,
    );
    if (picked != null) {
      setState(() {
        _endingTime = picked;
        finalDate2 = DateFormat.yMMMMd('en_US').format(selectedDate2);
        finalTime2 = _endingTime.format(context).toString();
        endingDate = "$finalDate2${"       "}$finalTime2";
        endingTime.text = endingDate.toString();

        DateTime stDatetime = selectedDate.add(
            Duration(hours: _startingTime.hour, minutes: _startingTime.minute));
        DateTime edDatetime = selectedDate2.add(
            Duration(hours: _endingTime.hour, minutes: _endingTime.minute));

        Duration diff = edDatetime.difference(stDatetime);
        String spliceString = diff.toString().substring(0, 5);
        timeDifference = spliceString.toString();
        //String formattedDate = {"${selectedDate2.day} . ${selectedDate2.month} .${selectedDate2.year} "}.toString();
        // print("${formattedDate} is =============================");
        //
      });
    }
    return null;
  }

  //Submit Function
  void submitFunction() {
    if (startingKmController.text.isEmpty ||
        endingKmController.text.isEmpty ||
        startingTime.text.isEmpty ||
        endingTime.text.isEmpty) {
      /* showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text("Please Enter all the details",style: TextStyle(fontWeight: FontWeight.bold),),
          content: Text("Please Enter all the values in the Box"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              child: Text("Exit"),
            ),
          ],
        ),
      );*/
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => DriverLogbookHistory()));
    } else {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => DriverLogbookData()));
      print("All the values are inserted");
    }
  }

  @override
  void dispose() {
    startingKmController.dispose();
    endingKmController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Today's Date",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      ":",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      formatter,
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: unselectedIconColor),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  DottedLine(
                    dashLength: 7,
                    dashGapLength: 3,
                    lineThickness: 3,
                    direction: Axis.horizontal,
                    dashColor: unselectedIconColor,
                    dashGapColor: Colors.white,
                    lineLength: 350,
                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFieldLabels(
                    labels: "Starting Kilometer",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: CustomTextField(
                      borderColor: unselectedIconColor,
                      borderRadius: 8.0,
                      enableBorderWidth: 2.0,
                      borderWidth: 3,
                      onTapfunction: () {},
                      keyBoardType: TextInputType.number,
                      hintText: 'Enter Starting Kilometer',
                      isPassword: false,
                      textEditingController: startingKmController,
                    ),
                  ),
                  TextFieldLabels(
                    labels: "Starting Time",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        colorScheme: ThemeData().colorScheme.copyWith(
                              primary: Colors.red,
                            ),
                      ),
                      child: TextField(
                        controller: startingTime,
                        keyboardType: TextInputType.datetime,
                        onTap: selectDate,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          hintText: 'Enter Starting Time',
                          prefixIcon: const Icon(FontAwesomeIcons.solidClock),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: unselectedIconColor,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.red,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //Starting Kilometer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: DottedLine(
                      dashLength: 7,
                      dashGapLength: 3,
                      lineThickness: 3,
                      direction: Axis.horizontal,
                      dashColor: unselectedIconColor,
                      dashGapColor: Colors.white,
                      lineLength: 350,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFieldLabels(
                    labels: "Ending Kilometer",
                  ),
                  // 250

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      controller: endingKmController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Enter Ending Kilometer',
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: unselectedIconColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                      onChanged: (totalKm2) {
                        int stKm = int.parse(startingKmController.text);
                        int enKm = int.parse(endingKmController.text);
                        int total = enKm - stKm;
                        totalKm2 = total.toString();
                        totalKm = totalKm2;
                      },
                    ),
                  ),

                  TextFieldLabels(
                    labels: "Ending Time",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        colorScheme: ThemeData().colorScheme.copyWith(
                              primary: Colors.red,
                            ),
                      ),
                      child: TextField(
                        controller: endingTime,
                        keyboardType: TextInputType.datetime,
                        onTap: selectDate2,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          hintText: 'Enter Starting Time',
                          prefixIcon: const Icon(
                            FontAwesomeIcons.solidClock,
                          ),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: unselectedIconColor,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.red,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //Ending Kilometer


              //Total Tabs
              Container(
                margin: const EdgeInsets.only(
                    left: 16, top: 10, bottom: 10, right: 16),
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: unselectedIconColor,
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(
                    width: 2,
                    color: unselectedIconColor,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child:
                            Totals(label: "Total Kilometers", total: totalKm)),
                    Container(
                      height: 50,
                      width: 1,
                      color: Color(0xfff3f3f3),
                    ),
                    Expanded(
                        child: Totals(
                            label: "Total Hours", total: timeDifference)),
                  ],
                ),
              ),

// "${timeDifference} Hours"
// "${totalKm} Kilometers",

              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, bottom: 16.0),
                child: SizedBox(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: LableColor
                      ),
                  onPressed: submitFunction,
                  child: Text("SUBMIT",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
