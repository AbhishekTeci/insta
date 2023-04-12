import 'package:flutter/material.dart';
import 'package:new_project/widgets/listWidgets/postWidgets.dart';

import '../widgets/listWidgets/storyWidgets.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  final List<String> posts = [
    'accets/post/post1.jpeg',
    'accets/post/post2.jpg',
    'accets/post/post3.jpg',
    'accets/post/post4.webp',
    'accets/post/post5.jpg',
    'accets/post/post6.jpg',
  ];

  final List<String> stories = [
    'accets/profile/profile1.jpg',
    'accets/profile/profile2.jpg',
    'accets/profile/profile3.jpg',
    'accets/profile/profile4.jpg',
    'accets/profile/profile5.webp',
    'accets/profile/profile6.webp'
  ];

  final List<String> name = [
    'Abhishek',
    'Mohan Lal',
    'Saurabh',
    'Satyam ',
    'Rishika',
    'Michel '
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(35.0),
            child: AppBar(
              title: Image.asset(
                'accets/instagram.png',
                height: 30,
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: const [
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.message,color: Colors.black,),

                )
              ],
            )),
        body: Column(
          children: [

            // Instagram stories

            SizedBox(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: stories.length,
                  itemBuilder: (context, index) {
                    return StoriesWidgets(
                      child1: stories[index],
                      name: name[index],
                      onTap: (){

                      },
                    );

                  }),
            ),

            // instagram post
            Expanded(
              child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return PostWidgets(
                      child2: posts[index],
                      name: name[index],
                      profileImg: stories[index],
                    );
                  }),
            ),
          ],
        ));
  }
}
