import 'package:flutter/material.dart';
import 'package:sejaltravels_2022/const/const.dart';


class DriverDocumentPhotos extends StatelessWidget {

  String appBarTitle;


  DriverDocumentPhotos({required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: LableColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(appBarTitle),
      ),
    );
  }
}
