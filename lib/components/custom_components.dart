import 'package:flutter/material.dart';
import 'package:sejaltravels_2022/const/const.dart';

class Totals extends StatelessWidget {
  String label, total;

  Totals({Key? key, required this.label, required this.total})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              color: Color(0xfff3f3f3),
            ),
          ),
        ),
        Text(
          total,
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xfff3f3f3),
          ),
        ),
      ],
    );
  }
}

class TextFieldLabels extends StatelessWidget {
  final String labels;

  TextFieldLabels({required this.labels});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, top: 15, bottom: 5),
      child: Text(
        labels,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: unselectedIconColor),
      ),
    );
  }
}
