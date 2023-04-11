import 'package:flutter/material.dart';
import 'package:new_project/Screen/cancleScreen.dart';
import 'package:new_project/Screen/homeScreen.dart';
import 'package:new_project/Screen/musicScreen.dart';
import 'package:new_project/Screen/searchScreen.dart';

class bottomNavBar extends StatefulWidget {
  const bottomNavBar({Key? key}) : super(key: key);

  @override
  State<bottomNavBar> createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  int myIndex = 0;

  List<Widget> widgeList =  [

    HomeScreen(),
    MusicScreen(),
    const CancelScreen(),
    SearchScreen(),
     const Text('Open Settings', style: TextStyle(fontSize: 40), textAlign: TextAlign.center),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(




      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.black,),
              label: 'Home',
              backgroundColor: Colors.lightBlue),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note,color: Colors.black,),
              label: 'Music',
              backgroundColor: Colors.limeAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.videocam_outlined,color: Colors.black,),
              label: 'Reels',
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,color: Colors.black,),
              label: 'Search',
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.black,),
              label: 'Profile',
              backgroundColor: Colors.blueAccent)

        ],
      ),
      body: IndexedStack(
        index: myIndex,
        children: widgeList,
      ),

    );
  }
}
