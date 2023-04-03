

import 'package:flutter/material.dart';
import 'package:new_project/Dashboard.dart';
import 'package:new_project/login/screen/loginScreen.dart';
import 'package:new_project/signup.dart';

void main() {


  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => const loginScreen(),
      'signup': (context) => const Signup(),
      'HomeScreen' : (context)=> const home_screen()
    },
  ));
}
