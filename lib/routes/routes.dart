import 'package:flutter/material.dart';

import '../screens/chat_screen.dart';
import '../screens/loading_screen.dart';
import '../screens/login_screen.dart';
import '../screens/sign_up_screen.dart';
import '../screens/users_screen.dart';

//Función que retorna un Widget
final Map<String, Widget Function(BuildContext)> appRoutes = {
  'chat-screen': (_) => ChatScreen(),
  'loading-screen': (_) => LoadingScreen(),
  'login-screen': (_) => LoginScreen(),
  'sign-up-screen': (_) => SignUpScreen(),
  'users-screen': (_) => UsersScreen(),
};
