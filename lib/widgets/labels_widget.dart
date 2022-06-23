import 'package:flutter/material.dart';

class LabelsWidget extends StatelessWidget {
  final String labelOne;
  final String labelTwo;
  final String newScreen;

  const LabelsWidget(
      {required this.newScreen,
      required this.labelOne,
      required this.labelTwo});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          labelOne,
          style: TextStyle(
              color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 9,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, newScreen);
          },
          child: Text(
            labelTwo,
            style: TextStyle(
                color: Colors.blue[600],
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ),
      ],
    ));
  }
}
