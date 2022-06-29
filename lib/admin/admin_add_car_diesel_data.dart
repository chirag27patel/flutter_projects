import 'package:flutter/material.dart';
import 'package:sejaltravels_2022/components/custom_components.dart';
import 'package:sejaltravels_2022/components/custom_textfield.dart';
import 'package:sejaltravels_2022/const/const.dart';

class AdminAddCarDiesel extends StatefulWidget {
  const AdminAddCarDiesel({Key? key}) : super(key: key);

  @override
  State<AdminAddCarDiesel> createState() => _AdminAddCarDieselState();
}

class _AdminAddCarDieselState extends State<AdminAddCarDiesel> {
  TextEditingController carNumberController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: adminAppbarColor,
        centerTitle: true,
        title: Text("Diesel Invoice"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0,),
              child: TextFieldLabel(textFieldLabel: 'Enter Car Number',),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 8.0),
              child: CustomTextField(
                hintText: "Car Number",
                borderRadius: 5.0,
                borderColor: textColor,
                borderWidth: 2,
                isPassword: false,
                textEditingController: carNumberController,
                enableBorderWidth: 2,
                keyBoardType: TextInputType.text,
                onTapfunction: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0,),
              child: TextFieldLabel(textFieldLabel: 'Enter Car Number',),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 8.0),
              child: CustomTextField(
                hintText: "Date",
                borderRadius: 5.0,
                borderColor: textColor,
                borderWidth: 2,
                isPassword: false,
                textEditingController: dateController,
                enableBorderWidth: 2,
                keyBoardType: TextInputType.text,
                onTapfunction: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0,),
              child: TextFieldLabel(textFieldLabel: 'Enter Car Number',),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 8.0),
              child: CustomTextField(
                hintText: "Amount",
                borderRadius: 5.0,
                borderColor: textColor,
                borderWidth: 2,
                isPassword: false,
                textEditingController: amountController,
                enableBorderWidth: 2,
                keyBoardType: TextInputType.text,
                onTapfunction: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
              child: CustomMaterialButton(
                  buttonText: "Submit",
                  iconData: Icons.add_circle,
                  iconColor: Colors.white,
                  buttonColor: adminAppbarColor,
                  borderRadius: 5.0,
                  buttonHeight: 55,
                  textHeight: 16,
                  function: (){}),
            ),
          ],
        ),
      ),
    );
  }
}
