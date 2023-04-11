import 'package:flutter/material.dart';
import 'package:new_project/Bar/SideBar.dart';

import 'Bar/BottomNavBar.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      drawer: const sideNavBar(),

      bottomNavigationBar:  const bottomNavBar(),

      body: Container(



      ),
    );
  }
}
