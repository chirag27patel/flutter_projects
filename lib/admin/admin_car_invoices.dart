import 'package:flutter/material.dart';
import 'package:sejaltravels_2022/components/custom_components.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminCarInvoices extends StatefulWidget {

  String departmentName;


  AdminCarInvoices({required this.departmentName});

  @override
  State<AdminCarInvoices> createState() => _AdminCarInvoicesState();
}

class _AdminCarInvoicesState extends State<AdminCarInvoices> {


  String total = "272725";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: adminAppbarColor,
        elevation: 0.0,
        centerTitle: true,
        title:  Text(widget.departmentName),
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                padding: const EdgeInsets.all(8.0),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(
                        right: 8.0, left: 8.0, bottom: 8.0, top: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          AdminInvoiceLabel(
                              label: "Invoice Number : ",
                              labelDetails: "001",
                              labelColor: Colors.black),
                          AdminInvoiceLabel(
                              label: "Car Number : ",
                              labelDetails: "GJ-05-GF-8884",
                              labelColor: Colors.black),
                          AdminInvoiceLabel(
                              label: "Department Name : ",
                              labelDetails: widget.departmentName,
                              labelColor: Colors.black),
                          AdminInvoiceLabel(
                              label: "Invoice Total : ",
                              labelDetails: "55000",
                              labelColor: Colors.black),
                          AdminInvoiceLabel(
                              label: "Payment Status : ",
                              labelDetails: "Pending",
                              labelColor: Colors.red),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Container(
             height: 55,
            color: Colors.redAccent,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 const Text("Total :",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
                 Text("₹ $total",style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24,),) ,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
