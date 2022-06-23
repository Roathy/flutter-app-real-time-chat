import 'package:flutter/material.dart';

class AppLogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 51),
            child: Image.asset(
              'assets/tag-logo.png',
              width: size.width * 0.39,
              //height: size.height * 0.24,
            ),
          ),
          Text(
            'Messenger',
            style: TextStyle(fontSize: 33),
          )
        ],
      ),
    );
  }
}
