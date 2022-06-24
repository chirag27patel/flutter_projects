import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/admin/admin_home.dart';
import 'package:sejaltravels_2022/components/custom_components.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminDieselData extends StatefulWidget {
  const AdminDieselData({Key? key}) : super(key: key);

  @override
  State<AdminDieselData> createState() => _AdminDieselDataState();
}

class _AdminDieselDataState extends State<AdminDieselData>
    with SingleTickerProviderStateMixin {
  double margin = 8.0;

  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 100,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Diesel Data",
        ),
        centerTitle: true,
        backgroundColor: adminAppbarColor,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  AdminDieselTab(
                    label: "This Month Diesel Cost",
                    labelDetails: "22,25,560",
                  ),
                ],
              ),
              Row(
                children: [
                  AdminDieselTab(
                    label: "Total Paid",
                    labelDetails: "22,25,560",
                  ),
                  AdminDieselTab(
                    label: "Total Unpaid",
                    labelDetails: "22,25,560",
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index){
                  return Container(
                    height: 120,
                    margin: EdgeInsets.only(left: 8.0,bottom: 8.0,top: 8.0,right: 8.0),
                    color: Colors.redAccent,
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AdminDieselTab extends StatelessWidget {
  String label;
  String labelDetails;

  AdminDieselTab({required this.label, required this.labelDetails});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(22.0),
              color: Colors.white,
              margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(label),
                  ),
                  Text(
                    labelDetails,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
