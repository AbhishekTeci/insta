
import 'package:flutter/material.dart';
import 'package:new_project/Checker/internetChecker.dart';
import 'package:new_project/Dashboard.dart';
import 'package:new_project/Screen/searchScreen.dart';
import 'package:new_project/login/screen/loginScreen.dart';
import 'package:new_project/signup.dart';

 import 'Screen/cancleScreen.dart';

void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => const loginScreen(),
      'signup': (context) => const Signup(),
      'HomeScreen' : (context)=> const home_screen(),
       'cancleScreen' : (context) => const CancelScreen(),
      'searchScreen' : (context) =>  SearchScreen()
    },

  ));

}
