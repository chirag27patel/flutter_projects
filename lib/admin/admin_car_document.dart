import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminCarDocument extends StatefulWidget {
  const AdminCarDocument({Key? key}) : super(key: key);

  @override
  State<AdminCarDocument> createState() => _AdminCarDocumentState();
}

class _AdminCarDocumentState extends State<AdminCarDocument> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: adminAppbarColor,
        elevation: 0.0,
        title: Text("Document List"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 10,
          padding: EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CarDocumentListTile(
                            iconData: FontAwesomeIcons.car,
                            label: "Car Number",
                            labelDetails: "GJ-05-GF-8884",
                          ),
                          CarDocumentListTile(
                            iconData: FontAwesomeIcons.solidUser,
                            label: "Car Owner",
                            labelDetails: "Chirag Patel",
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "View",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: adminAppbarColor),
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

class CarDocumentListTile extends StatelessWidget {
  String label;
  String labelDetails;
  IconData iconData;

  CarDocumentListTile(
      {required this.label,
      required this.labelDetails,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              iconData,
              size: 24,
              color: textColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(color: textColor),
                ),
                Container(
                  width: 160,
                  child: Text(
                    labelDetails,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
