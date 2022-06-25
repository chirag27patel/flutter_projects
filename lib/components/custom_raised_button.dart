import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomRaisedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final BorderRadius borderRadius;
  final VoidCallback? onPressed;

   CustomRaisedButton({
    required this.child,
    required this.color,
    required this.borderRadius,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
          ),
          child: child),
    );
  }
}

class SignInButton extends CustomRaisedButton {
  SignInButton({
    required String text,
    required Color color,
    required Color textColor,
    required BorderRadius borderRadius,
    required VoidCallback? onPressed,
  }) : super(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 18.0,fontWeight: FontWeight.bold),
          ),
          color: color,
          onPressed: onPressed,
          borderRadius: borderRadius,
        );
}

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    required IconData iconData,
    required Color iconColor,
    required String text,
    required Color color,
    required Color textColor,
    required BorderRadius borderRadius,
    required VoidCallback? onPressed,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Icon(
                iconData,
                color: iconColor,
                 size: 22,
              ),
              Text(
                text,
                style: TextStyle(color: textColor, fontSize: 16.0),
              ),

            ],
          ),
          color: color,
          onPressed: onPressed,
          borderRadius: borderRadius,
        );
}
