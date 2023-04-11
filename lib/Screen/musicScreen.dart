import 'package:flutter/material.dart';
import 'package:new_project/widgets/listWidgets/musicWidgets.dart';

class MusicScreen extends StatelessWidget {
  MusicScreen({Key? key}) : super(key: key);

  final List songTitle = [
    'Track 1',
    'Track 2',
    'Track 3',
    'Track 4',
    'Track 5',
    'Track 6',
    'Track 7',
    'Track 8',
    'Track 9',
    'Track 10',
    'Track 11',
  ];
  final List songImage = [
    'accets/songImage/song1.jpg',
    'accets/songImage/song2.jpg',
    'accets/songImage/song3.jpg',
    'accets/songImage/song4.jpg',
    'accets/songImage/song5.jpg',
    'accets/songImage/song6.jpg',
    'accets/songImage/song7.jpg',
    'accets/songImage/song8.jpg',
    'accets/songImage/song9.jpg',
    'accets/songImage/song10.jpg',
    'accets/songImage/song11.jpg',
  ];
  final List songSinger = [
    'Singer 1',
    'Singer 2',
    'Singer 3',
    'Singer 4',
    'Singer 5',
    'Singer 6',
    'Singer 7',
    'Singer 8',
    'Singer 9',
    'Singer 10',
    'Singer 11',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: songImage.length,
                  itemBuilder: (context, index) {
                    return MusicWidgets(
                      songImage: songImage[index],
                      songTitle: songTitle[index],
                      singerName: songImage[index],
                    );
                  }))
        ],
      ),
    );
  }
}
