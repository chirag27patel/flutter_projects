import 'package:flutter/material.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminCarInvoices extends StatefulWidget {
  const AdminCarInvoices({Key? key}) : super(key: key);

  @override
  State<AdminCarInvoices> createState() => _AdminCarInvoicesState();
}

class _AdminCarInvoicesState extends State<AdminCarInvoices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: adminAppbarColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text("Invoices"),
      ),
      body: ListView.builder(
          itemCount: 10,
          padding: EdgeInsets.all(8.0),
          itemBuilder: (context, index) {
        return Container(

          height: 110,
          margin: EdgeInsets.only(right: 8.0,left: 8.0,bottom: 8.0,top: 8.0),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5.0)
          ),
        );
      }),
    );
  }
}
