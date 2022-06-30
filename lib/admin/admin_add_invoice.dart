import 'package:flutter/material.dart';
import 'package:sejaltravels_2022/admin/admin_casual_invoice_form.dart';
import 'package:sejaltravels_2022/admin/admin_monthly_invoice_form.dart';

import 'package:sejaltravels_2022/const/const.dart';

class AdminAddInvoice extends StatefulWidget {
  const AdminAddInvoice({Key? key}) : super(key: key);

  @override
  State<AdminAddInvoice> createState() => _AdminAddInvoiceState();
}

class _AdminAddInvoiceState extends State<AdminAddInvoice> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Add Invoice"),
          backgroundColor: adminAppbarColor,
          elevation: 0.0,
          bottom: TabBar(
              indicatorColor: Colors.black54,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 5.0, color: Colors.grey.shade800),
                insets:const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
              ),
              tabs: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Monthly",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Casual",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ]),

        ),
        body: TabBarView(
          children: [
            AdminMonthlyInvoiceForm(),
            AdminCasualInvoiceForm(),
          ],
        ),
      ),
    );
  }
}
