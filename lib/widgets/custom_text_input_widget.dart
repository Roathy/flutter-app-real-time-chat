import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final IconData icon;
  final String placeholder;
  final TextInputType inputType;
  final bool isPassword;
  final TextEditingController textController;

  const CustomTextInput({
    required this.icon,
    required this.placeholder,
    this.inputType = TextInputType.text,
    this.isPassword = false,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 21),
        padding: EdgeInsets.only(right: 21),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(33),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 6,
                  offset: Offset(0, 6))
            ]),
        child: TextField(
          controller: textController,
          obscureText: isPassword,
          autocorrect: false,
          keyboardType: inputType,
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
            ),
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            hintText: placeholder,
          ),
        ));
  }
}
