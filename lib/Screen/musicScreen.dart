import 'package:flutter/material.dart';
import 'package:new_project/widgets/listWidgets/musicWidgets.dart';

class MusicScreen extends StatelessWidget {
  MusicScreen({Key? key}) : super(key: key);

  final List musicList = [
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
    'Track 12',
    'Track 13',
    'Track 14',
    'Track 15',
    'Track 16',
    'Track 17',
    'Track 18',
    'Track 19',
    'Track 20',
    'Track 21',
    'Track 22',
    'Track 23',
    'Track 24',
    'Track 25',
    'Track 26',
    'Track 27',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: musicList.length,
                  itemBuilder: (context, index) {
                    return MusicWidgets(
                      child: musicList[index],
                    );
                  }))
        ],
      ),
    );
  }
}
