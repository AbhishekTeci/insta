import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicWidgets extends StatelessWidget {
  String songImage;
  String songTitle;
  String singerName;


   MusicWidgets({Key? key, required this.songImage,required this.singerName,required this.songTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(

        padding: const EdgeInsets.only(left: 4,right: 4,top: 4,bottom: 2),

        child: Container(
          height: 65,
          color: Colors.black54,
          child: Row(
            children: [
              Image.asset(songImage),

            ],

          ),


        ));
  }
}
