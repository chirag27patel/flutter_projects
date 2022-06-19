import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/const/const.dart';
import 'package:sejaltravels_2022/driver/driver_document_photos_page.dart';

class DriverCarDocumentList extends StatefulWidget {
  const DriverCarDocumentList({Key? key}) : super(key: key);

  @override
  State<DriverCarDocumentList> createState() => _DriverCarDocumentListState();
}

class _DriverCarDocumentListState extends State<DriverCarDocumentList> {
  List<String> documentName = []
    ..add("Driving License")
    ..add("RC Book")
    ..add("P.U.C")
    ..add("Insurance");

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
          itemCount: documentName.length,
          padding: EdgeInsets.all(8.0),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DriverDocumentPhotos(appBarTitle: documentName[index].toString());
                }));

              },
              child: Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,top: 10,bottom: 10),
                      child: Text(
                        documentName[index],
                        style: TextStyle(
                            color: LableColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  IconData iconData;
  String Lable;
  Color bgColor;

  CustomIconButton(
      {required this.iconData, required this.Lable, required this.bgColor});

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
                onTap: () {},
                child: Icon(
                  iconData,
                  color: Colors.white,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4, bottom: 0),
          child: Text(Lable),
        )
      ],
    );
  }
}
