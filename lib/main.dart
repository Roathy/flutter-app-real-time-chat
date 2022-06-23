import 'package:flutter/material.dart';

import './routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real time chat!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'login-screen',
      routes: appRoutes,
    );
  }
}
