import 'package:flutter/material.dart';
import 'package:sejaltravels_2022/components/custom_components.dart';
import 'package:sejaltravels_2022/components/custom_raised_button.dart';
import 'package:sejaltravels_2022/components/custom_textfield.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminMonthlyInvoiceForm extends StatefulWidget {
  @override
  State<AdminMonthlyInvoiceForm> createState() => _AdminMonthlyInvoiceFormState();
}

class _AdminMonthlyInvoiceFormState extends State<AdminMonthlyInvoiceForm> {



  String dropdownvalue = 'Innova';

  List<String> carList = [
    'Innova',
    'Innova Crysta',
    'Tavera',
    'Xylo',
    'Swift',
    'Swift Dzire',
  ];

  String dropdownvalue2 = 'Monthly';

  List<String> invoiceType = [
    'Monthly',
    'Casual'
  ];


  TextEditingController invoiceNumber=TextEditingController();
  TextEditingController invoiceDate=TextEditingController();
  TextEditingController invoiceMonth=TextEditingController();
  TextEditingController carNumber=TextEditingController();
  TextEditingController invoiceAmount=TextEditingController();
  TextEditingController invoiceCarType=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(

          children: [
            //Invoice Number
            TextFieldLabel(
              textFieldLabel: "Invoice Number",
            ),
            CustomTextField(
                hintText: "Invoice Number",
                borderRadius: 5.0,
                borderColor: Colors.black,
                borderWidth: 2,
                isPassword: false,
                textEditingController: invoiceNumber,
                enableBorderWidth: 2,
                keyBoardType: TextInputType.text,
                onTapfunction: (){}),
            //Invoice Date
            TextFieldLabel(
              textFieldLabel: "Invoice Date",
            ),
            CustomTextField(
                hintText: "Invoice Date",
                borderRadius: 5.0,
                borderColor: Colors.black,
                borderWidth: 2,
                isPassword: false,
                textEditingController: invoiceNumber,
                enableBorderWidth: 2,
                keyBoardType: TextInputType.text,
                onTapfunction: (){}),
            //Invoice Month
            TextFieldLabel(
              textFieldLabel: "Invoice Month",
            ),
            CustomTextField(
                hintText: "Invoice of Month",
                borderRadius: 5.0,
                borderColor: Colors.black,
                borderWidth: 2,
                isPassword: false,
                textEditingController: invoiceNumber,
                enableBorderWidth: 2,
                keyBoardType: TextInputType.text,
                onTapfunction: (){}),
            //Car Number
            TextFieldLabel(
              textFieldLabel: "Car Number",
            ),
            CustomTextField(
                hintText: "Car Number",
                borderRadius: 5.0,
                borderColor: Colors.black,
                borderWidth: 2,
                isPassword: false,
                textEditingController: invoiceNumber,
                enableBorderWidth: 2,
                keyBoardType: TextInputType.text,
                onTapfunction: (){}),
            //Invoice Amount
            TextFieldLabel(
              textFieldLabel: "Invoice Amount",
            ),
            CustomTextField(
                hintText: "Amount",
                borderRadius: 5.0,
                borderColor: Colors.black,
                borderWidth: 2,
                isPassword: false,
                textEditingController: invoiceNumber,
                enableBorderWidth: 2,
                keyBoardType: TextInputType.text,
                onTapfunction: (){}),

            //Select Car Type
            TextFieldLabel(
              textFieldLabel: "Select Car Type",
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: textColor, width: 2),
                  color: Colors.white),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: dropdownvalue,
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    size: 42,
                  ),
                  elevation: 16,
                  isExpanded: true,
                  hint: Text("Select Car"),
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                  ),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                  items:
                  carList.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,style: TextStyle(color: Colors.black),),
                    );
                  }).toList(),
                ),
              ),
            ),
            //Submit Button
            Padding(
              padding: const EdgeInsets.only(top: 16,left: 0,right: 0),
              child: Row(

                children: [
                  Expanded(
                    child: CustomRaisedButton(
                        child: Text("Submit".toUpperCase(),style: TextStyle(fontSize: 18),),
                        color: adminAppbarColor,
                        borderRadius: BorderRadius.circular(5.0),
                        onPressed: (){}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
