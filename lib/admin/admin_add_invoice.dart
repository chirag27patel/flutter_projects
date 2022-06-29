import 'package:flutter/material.dart';
import 'package:sejaltravels_2022/components/custom_textfield.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminAddInvoice extends StatefulWidget {
  const AdminAddInvoice({Key? key}) : super(key: key);

  @override
  State<AdminAddInvoice> createState() => _AdminAddInvoiceState();
}

class _AdminAddInvoiceState extends State<AdminAddInvoice> {

  TextEditingController invoiceNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Add Invoice"),
        backgroundColor: adminAppbarColor,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          CustomTextField(
              hintText: "Invoice Number",
              borderRadius: 5.0,
              borderColor: Colors.black,
              borderWidth: 1,
              isPassword: false,
              textEditingController: invoiceNumber,
              enableBorderWidth: 1,
              keyBoardType: TextInputType.text,
              onTapfunction: (){})
        ],
      ),
    );
  }
}
