import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/const/const.dart';

class DirverHome extends StatefulWidget {
  const DirverHome({Key? key}) : super(key: key);

  @override
  State<DirverHome> createState() => _DirverHomeState();
}

class _DirverHomeState extends State<DirverHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: DriverHomeLabels2(
                  imagePath: "assets/images/car.png",
                  tabColor: Colors.blueAccent,
                  tabName: 'Profile',
                )),
                Container(
                  width: 8,
                ),
                Expanded(
                    child: DriverHomeLabels2(
                  imagePath: "assets/images/car.png",
                  tabColor: Colors.redAccent,
                  tabName: 'Profile',
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



class DriverHomeLabels2 extends StatelessWidget {


  String imagePath;
  String tabName;
  Color tabColor;

  DriverHomeLabels2(
      {required this.imagePath, required this.tabName, required this.tabColor});



  @override
  Widget build(BuildContext context) {
    return Container(

      child: Material(
        color: tabColor,
        borderRadius: BorderRadius.circular(5.0),
        child: InkWell(
          splashColor: Colors.black54,
          borderRadius: BorderRadius.circular(5.0),
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Image.asset(
                  imagePath,
                  width: 50,
                  height: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  tabName,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
