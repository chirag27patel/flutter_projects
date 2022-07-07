import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: Text('Car List'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: adminAppbarColor,
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
        return Container();
      }),
    );
  }
}
