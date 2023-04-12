import 'package:flutter/material.dart';

class ShowData extends StatefulWidget {
  final String body;
  final String id;
  final String title;


  const ShowData({Key? key, required this.id,required this.title,required this.body}) : super(key: key);

  @override
  State<ShowData> createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  @override
  Widget build(BuildContext context) {

       return  Card(

          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                Text('S No - ${widget.id}',style: const TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),),
                const SizedBox(height: 8,),
                const Text('Title',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                const SizedBox(height: 3,),
                Text(widget.title,style: const TextStyle(color: Colors.green,fontWeight: FontWeight.w700),),
                const SizedBox(height: 8,),
                const Text('Body',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                const SizedBox(height: 3,),
                Text(widget.body,style: const TextStyle(color: Colors.deepPurpleAccent,fontWeight: FontWeight.w400),)
              ],

            ),
          ),
       );
  }
}
