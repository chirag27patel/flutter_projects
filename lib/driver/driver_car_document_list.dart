import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/const/const.dart';

class DriverCarDocumentList extends StatefulWidget {
  const DriverCarDocumentList({Key? key}) : super(key: key);

  @override
  State<DriverCarDocumentList> createState() => _DriverCarDocumentListState();
}

class _DriverCarDocumentListState extends State<DriverCarDocumentList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: LableColor,
        title: Text("Car Documents"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (index, context) {
            return Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Driving License",
                    style: TextStyle(
                        color: LableColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  CustomIconButton(
                    iconData: FontAwesomeIcons.camera,
                    Lable: "Camera",
                    bgColor: LableColor,
                  ),
                  CustomIconButton(
                    iconData: FontAwesomeIcons.solidEye,
                    Lable: "Edit",
                    bgColor: LableColor,
                  ),
                  CustomIconButton(
                    iconData: FontAwesomeIcons.trash,
                    Lable: "Delete",
                    bgColor: Colors.red,
                  ),
                ],
              ),
            );
          }),
    );
  }
}

class CustomIconButton extends StatelessWidget {

  IconData iconData;
  String Lable;
  Color  bgColor;

  CustomIconButton({required this.iconData,required this.Lable,required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Material(
          borderRadius: BorderRadius.circular(5.0),
          color: bgColor,
          child: Container(
            height: 40,
            width: 40,
            child: InkWell(
                onTap: (){},
                child: Icon(
                    iconData,
                    color: Colors.white,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4,bottom: 0),
          child: Text(Lable),
        )
      ],
    );
  }
}
