import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:sejaltravels_2022/const/const.dart';


class DriverLogbookData extends StatefulWidget {
  const DriverLogbookData({Key? key}) : super(key: key);

  @override
  State<DriverLogbookData> createState() => _DriverLogbookDataState();
}

class _DriverLogbookDataState extends State<DriverLogbookData> {


  DateTime now = DateTime.now();

  List<String> dateLists = [];


  late String formattedDate = DateFormat("E").format(now);



  @override
  void initState() {
    super.initState();
    dateList;
    print("init state called");
  }

  void dateList (){
    setState((){
      for (var i = 0; i < now.day; i++) {
        var dates = now.add(Duration(days: i));
        dateLists.add(dates.day.toString());

      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text('Driver Lobook'),
        backgroundColor: LabelColor,
        centerTitle: true,
        elevation: 0.0,

      ),
      body: ListView.builder(
          itemCount: 30,
          padding: EdgeInsets.only(top: 10),
          itemBuilder: (context,index){
        return Container(
          margin: EdgeInsets.only(left: 15,right: 15,top: 7.5,bottom: 7.5),
          padding: EdgeInsets.only(top: 15,bottom: 15,right: 15,left: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0)
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      HistoryLabels(label: "Starting Date", labelDetails: "12-Jul-2022",labelColor: unselectedIconColor),
                      HistoryLabels(label: "Ending Date", labelDetails: "12-Jul-2022",labelColor: unselectedIconColor),
                    ],
                  ),
                  Column(
                    children: [
                      HistoryLabels(label: "Starting Time", labelDetails: "08:00 AM",labelColor: unselectedIconColor),
                      HistoryLabels(label: "Ending Time", labelDetails: "08:00 PM",labelColor: unselectedIconColor,),
                    ],
                  ),
                  Column(
                    children: [
                      HistoryLabels(label: "Total Time", labelDetails: "16:00",labelColor: Colors.redAccent),
                      HistoryLabels(label: "Total Km", labelDetails: "120",labelColor: Colors.redAccent),
                    ],
                  ),

                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    color: LabelColor,
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
        );
      }),
    );
  }
}

class HistoryLabels extends StatelessWidget {

  String label;
  String labelDetails;
  Color labelColor;

  HistoryLabels({required this.label,required this.labelDetails, required this.labelColor});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 0,right: 0,top: 5,bottom: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(label,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: labelColor),),
              ),
              Text(labelDetails,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black54),),
            ],
          ),
        ),

      ],
    );
  }
}
