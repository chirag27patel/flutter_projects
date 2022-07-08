import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/admin/admin_car_list.dart';
import 'package:sejaltravels_2022/components/custom_raised_button.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminLogbookCarList extends StatefulWidget {
  const AdminLogbookCarList({Key? key}) : super(key: key);

  @override
  State<AdminLogbookCarList> createState() => _AdminLogbookCarListState();
}

class _AdminLogbookCarListState extends State<AdminLogbookCarList> {
  //todo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('Car List'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: adminAppbarColor,
      ),
      body: ListView.builder(
          itemCount: 5,
          padding: EdgeInsets.all(8.0),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0)),
              child: Column(

                children: [
                  Row(

                    children: [
                      AdminCarListLabel(
                          carListLabel: "Car Owner",
                          carListLabelData: "Chirag Patel",
                          alignment: MainAxisAlignment.start,
                      ),
                      AdminCarListLabel(
                          carListLabel: "Car Number",
                          carListLabelData: "GJ-21-CC-8884",
                        alignment: MainAxisAlignment.end,
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      AdminCarListLabel(
                          carListLabel: "Car Type",
                          carListLabelData: "Kia Sonet",
                        alignment: MainAxisAlignment.start,
                      ),
                      AdminCarListLabel(
                          carListLabel: "Car Department",
                          carListLabelData: "MFF",
                        alignment: MainAxisAlignment.end,
                      ),

                    ],
                  ),
                  Row(
                    children: [

                    ],
                  ),
                  Row(

                    children: [
                      AdminCarListLabel(
                          carListLabel: "Mobile No",
                          carListLabelData: "8141934349",
                        alignment: MainAxisAlignment.start,
                      ),
                      Material(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5.0),
                        child: InkWell(
                          onTap: (){},
                          splashColor: Colors.black,
                          borderRadius: BorderRadius.circular(5.0),
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Icon(FontAwesomeIcons.bookOpen,size: 16,),
                                ),
                                Text("Check Logbook"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
