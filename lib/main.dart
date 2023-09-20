import 'dart:js';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task8/Screens/Call%20Screen.dart';
import 'package:task8/Screens/LoginScreen.dart';
import 'package:task8/Screens/ProfileScreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(

      routerConfig: _routes,
    );
  }

  final GoRouter _routes=GoRouter(
    initialLocation: "/login",
      routes:[
        GoRoute(path: "/login",builder: (context,state)=> const LoginScreen()),
        GoRoute(path: "/profile",builder: (context,state)=> const ProfileScreen()),
        GoRoute(path: "/call",builder: (context,state)=> const CallScreen()),

      ]
  );
}



