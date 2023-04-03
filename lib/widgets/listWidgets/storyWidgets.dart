import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoriesWidgets extends StatelessWidget {
  final String child1;
  final String name;
  final Function() onTap;

  const StoriesWidgets({super.key, required this.child1, required this.name,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: SizedBox(
              height: 70,
              width: 70,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(child1),
              ),
            ),
          ),
          Text(
            name,
            style: const TextStyle(color: Colors.black87),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
