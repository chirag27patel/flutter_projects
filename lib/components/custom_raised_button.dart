import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomRaisedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final BorderRadius borderRadius;
  final VoidCallback? onPressed;

  const CustomRaisedButton({
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
            style: TextStyle(color: textColor, fontSize: 15.0),
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
                 size: 32,
              ),
              Text(
                text,
                style: TextStyle(color: textColor, fontSize: 15.0),
              ),
              const Opacity(
                opacity: 0.0,
                  child:  Icon(
                Icons.check,
                color: Colors.red,
              )),
            ],
          ),
          color: color,
          onPressed: onPressed,
          borderRadius: borderRadius,
        );
}
