import 'package:flutter/material.dart';
import 'package:sejaltravels_2022/admin/admin_home.dart';
import 'package:sejaltravels_2022/components/custom_textfield.dart';
import 'package:sejaltravels_2022/const/const.dart';
import 'dart:math' as math;
import 'package:sejaltravels_2022/driver/driver_home.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController loginIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isButtonEnabled = true;

  final snackBar = SnackBar(
    content: const Text('Email Id and Password Field Cannot be empty!!'),
    action: SnackBarAction(
      label: 'OK',
      onPressed: () {
        // Some code to undo the change.
      },
    ),
  );

  void singInFunction() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text("Sign In Page"),
        backgroundColor: LabelColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: CustomTextField(
              hintText: 'Login Id',
              textEditingController: loginIdController,
              borderColor: Colors.grey.shade800,
              borderRadius: 5.0,
              borderWidth: 2.0,
              keyBoardType: TextInputType.text,
              enableBorderWidth: 2,
              isPassword: false,
              onTapfunction: () {},
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: CustomTextField(
              hintText: 'Password',
              textEditingController: passwordController,
              borderColor: Colors.grey.shade800,
              borderRadius: 5.0,
              borderWidth: 2.0,
              keyBoardType: TextInputType.text,
              onTapfunction: () {},
              enableBorderWidth: 2.0,
              isPassword: true,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 10),
                child: SizedBox(
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: LabelColor,
                    ),
                    onPressed: () {
                      if (loginIdController.text.isEmpty ||
                          passwordController.text.isEmpty) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(snackBar);
                      } else if (loginIdController.text == "admin" ||
                          passwordController.text == "admin") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AdminHome()));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DriverHome()));
                      }
                    },
                    child: const Text(
                      "Sing In",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
