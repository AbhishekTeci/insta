import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostWidgets extends StatelessWidget {
  final String child2;
  final String name;
  final String profileImg;

  PostWidgets(
      {super.key,
      required this.child2,
      required this.name,
      required this.profileImg});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.red,
                    child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(profileImg),
                    )
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.w500,color: Color(0xfff252525),fontSize: 16),
                  
                ),
              ],
            ),
            const ImageIcon(AssetImage('accets/icon/three_dot.png'))
          ]),
        ),

        // post
        Container(
            decoration: const BoxDecoration(),
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              child2,
              fit: BoxFit.cover,
            )),

        // Buttons below the post
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  ImageIcon(AssetImage('accets/icon/like1.png'),),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ImageIcon(AssetImage('accets/icon/comment.png')),
                  ),
                  ImageIcon(AssetImage('accets/icon/share1.png')),
                ],
              ),
              ImageIcon(AssetImage('accets/icon/save.png'))
            ],
          ),
        ),

// Liked By

        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: const [
              Text('Liked by '),
              Text(
                'Micle ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text('other', style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ),
// Captions

        Padding(
          padding: const EdgeInsets.only(left: 16.0,top: 8),
          child: RichText(text:

          const TextSpan(children:[

            TextSpan(text: 'Abhishek ',style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'You can regret a lot of things but you’ll never regret being kind.',)

          ] ))
        )

      ],
    );
  }
}

// shape: BoxShape.circle
