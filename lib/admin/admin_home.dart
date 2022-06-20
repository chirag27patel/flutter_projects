import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  _AdminHomeState createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: adminAppbarColor,
        elevation: 0.0,
        title: Text("Admin Home"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(4.0),
            child: Row(
              children: [
                AdminHomeTab(
                  imagePath: "assets/images/car.png",
                  label: "L&t today's Trips",
                  labelDetails: "22",
                ),
                AdminHomeTab(
                  imagePath: "assets/images/car.png",
                  label: "AMNS Trips",
                  labelDetails: "22",
                ),

              ],
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
  String? imagePath;

  AdminHomeTab({required this.label,required this.labelDetails, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 4.0,right: 4.0,top: 4.0,bottom: 4.0),
        child: Material(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.orangeAccent,
          child: InkWell(
            onTap: (){},
            borderRadius: BorderRadius.circular(5.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0,right: 4.0),
                  child: Image.asset(imagePath!,height: 40,width: 40,),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5,top: 16,bottom: 0,right: 0),
                      child: Text(label,style: TextStyle(fontSize: 14,color: Colors.white),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5,top: 8,bottom: 16,right: 0),
                      child: Text(labelDetails,style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),),
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
