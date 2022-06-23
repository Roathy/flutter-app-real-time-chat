import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return RaisedButton(
      shape: StadiumBorder(),
      color: Colors.blue,
      elevation: 2,
      highlightElevation: 6,
      onPressed: onPressed,
      child: Container(
          height: size.height * 0.06,
          child: Center(
            child: Text(label,
                style: TextStyle(color: Colors.white, fontSize: 18)),
          )),
    );
  }
}
