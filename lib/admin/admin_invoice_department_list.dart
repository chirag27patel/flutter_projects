import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sejaltravels_2022/admin/admin_car_invoices.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminInvoiceDepartment extends StatefulWidget {
  const AdminInvoiceDepartment({Key? key}) : super(key: key);

  @override
  State<AdminInvoiceDepartment> createState() => _AdminInvoiceDepartmentState();
}

class _AdminInvoiceDepartmentState extends State<AdminInvoiceDepartment> {
  List<String> departmentList = [
    "MFF",
    "PIPING",
    "HEAVY ENGINEERING",
    "TURBINE",
    "BOILER",
    "AM/NS",
    "ENGINEER INDIA LTD",
    "SOFT SHIPYARD"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: adminAppbarColor,
        title: const Text("Select Department"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: departmentList.length,
                padding: const EdgeInsets.all(8.0),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) =>AdminCarInvoices(
                            departmentName: departmentList[index],
                      )));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(50.0),
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(50.0)
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              departmentList[index],
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                color: adminAppbarColor, shape: BoxShape.circle),
                            child: const Text(
                              "20",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,bottom: 16),
            child: Material(
              color: adminAppbarColor,
              borderRadius: BorderRadius.circular(50.0),
              child: InkWell(
                onTap: (){},
                splashColor: Colors.black,
                borderRadius: BorderRadius.circular(50.0),
                child: Container(
                  height: 55,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Add Invoices",style: TextStyle(fontSize: 18,color: Colors.white),),
                      Icon(FontAwesomeIcons.circlePlus,color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
