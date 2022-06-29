import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminCarDieselData extends StatelessWidget {
  const AdminCarDieselData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: adminAppbarColor,
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Car Diesel Data"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.plus))
        ],
      ),
      body: ListView.separated(
        itemCount: 25,
        padding: EdgeInsets.only(top: 10,bottom: 10),
        separatorBuilder: (BuildContext context, int index) {
          if (index % 5 == 0) { // Display `AdmobBanner` every 5 'separators'.
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(

                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 5.0,bottom: 5.0),
                  padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
                  child: Text("February".toUpperCase()),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ],
            );
          }
          return Container();
        },
        itemBuilder: (BuildContext context, int index) {
          return  Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            decoration: const BoxDecoration(
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
                      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
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
                        const Text(
                          "GJ.05.GF.8884",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                              color: adminAppbarColor),
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
                    const Text(
                      "5000 ",
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          color: adminAppbarColor),
                    ),
                  ],
                ),
              ],
            ),

          );
        },
      )
    );
  }
}


