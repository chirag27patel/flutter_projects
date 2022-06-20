import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/const/const.dart';

class DriverDiesel extends StatefulWidget {
  const DriverDiesel({Key? key}) : super(key: key);

  @override
  State<DriverDiesel> createState() => _DriverDieselState();
}

class _DriverDieselState extends State<DriverDiesel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: LabelColor,
        centerTitle: true,
        title: Text("Diesel Charges"),
      ),
      body: ListView.builder(
          itemCount: 4,
          padding: EdgeInsets.only(top: 10),
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //car
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(

                          children: [
                            Text(
                              "Nov",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                                color: textColor,
                              ),
                            ),
                            Container(height: 5,),
                            Text(
                              "15",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                                color: textColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 1,
                        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        color: Colors.grey,
                      ),
                      Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              "Car Number",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                                color: textColor,
                              ),
                            ),
                          ),
                          Text(
                            "GJ.05.GF.8884",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                                color: unselectedIconColor),
                          ),
                        ],
                      ),

                      //Date

                    ],
                  ),
                  //Money
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Text(
                          "Fuel Cost",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: textColor,
                          ),
                        ),
                      ),
                      Text(
                        "5000 ",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            color: unselectedIconColor),
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
