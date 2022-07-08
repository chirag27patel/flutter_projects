import 'package:flutter/material.dart';
import 'package:sejaltravels_2022/admin/admin_home.dart';
import 'package:sejaltravels_2022/components/custom_textfield.dart';
import 'package:sejaltravels_2022/const/const.dart';
import 'package:sejaltravels_2022/driver/driver_home.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage>
    with SingleTickerProviderStateMixin {


  final TextEditingController loginIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  late Animation _animation;
  late AnimationController _animationController;

  bool isButtonEnabled = true;

  final snackBar = SnackBar(
    content: const Text('Email Id and Password Field Cannot be empty!!'),
    action: SnackBarAction(
      label: 'OK',
      onPressed: () {

      },
    ),
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.elasticOut);
    _animationController.forward();

    _animation.addListener(() {
      setState(() {});
    });
  }


  @override
  void dispose() {
    _animationController.dispose(); // you need this
    super.dispose();
  }


  void singInFunction() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Sign In Page"),
        backgroundColor: LabelColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/sejallogo.png",
                height: _animation.value * 60,
                width: _animation.value * 60,
              ),
              const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  "Sejal Travels",
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      fontFamily: "playfair",
                      letterSpacing: 0.5),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: SizedBox(
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: LabelColor,
                    ),
                    onPressed: () {
                      if (loginIdController.text.isEmpty ||
                          passwordController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      } else if (loginIdController.text == "admin" &&
                          passwordController.text == "admin") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AdminHome()));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DriverHome()));
                      }
                    },
                    child: const Text(
                      "Sing In",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 16, color: textColor),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Click here",
                    style: TextStyle(
                        fontSize: 16,
                        color: LabelColor,
                        fontWeight: FontWeight.bold),
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
