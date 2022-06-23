import 'package:flutter/material.dart';

import '../widgets/app_logo_widget.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_input_widget.dart';
import '../widgets/labels_widget.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xfff2f2f2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLogoWidget(),
                  _LoginForm(),
                  LabelsWidget(
                      labelOne: '¿Ya tienes una cuenta?',
                      labelTwo: 'Inicia sesión aquí',
                      newScreen: 'login-screen'),
                  Container(
                    margin: EdgeInsets.only(bottom: 33),
                    child: Text(
                      'Términos y condiciones de uso',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class _LoginForm extends StatefulWidget {
  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  final nameController = TextEditingController();
  final mailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.only(top: 21),
        padding: EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          children: [
            CustomTextInput(
                icon: Icons.perm_identity,
                placeholder: 'Nombre',
                inputType: TextInputType.emailAddress,
                isPassword: false,
                textController: nameController),
            CustomTextInput(
                icon: Icons.mail_outline,
                placeholder: 'Correo',
                inputType: TextInputType.emailAddress,
                isPassword: false,
                textController: mailController),
            CustomTextInput(
              icon: Icons.lock_outline,
              placeholder: 'Contraseña',
              inputType: TextInputType.visiblePassword,
              isPassword: true,
              textController: passwordController,
            ),
            CustomButton(
                label: 'Registrar',
                onPressed: () {
                  print(nameController.text);
                  print(mailController.text);
                  print(passwordController.text);
                })
          ],
        ));
  }
}
