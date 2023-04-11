import 'package:flutter/material.dart';
import 'package:new_project/Checker/internetChecker.dart';
import 'package:new_project/widgets/listWidgets/showDataWidgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../Models/PostModel.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

    final List<PostModel> postList = [];

  Future<List<PostModel>> getPostApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      postList.clear();
      for (Map i in data) {
        postList.add(PostModel.fromJson(i));
      }
      return postList;
    } else {
      return postList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
                future: getPostApi(),
                builder: (context,snapshot){
                  if(!snapshot.hasData){

                    return const Center(
                         child: CircularProgressIndicator());


                  }else if(snapshot.hasError){
                    //TODO Make a error widgets if there is an error while loading the data.
                    return InternetCheck();
                  }else{
                  return ListView.builder(
                        itemCount: postList.length,
                        itemBuilder: (context,index){
                      return ShowData(
                        id: postList[index].id.toString(),
                        title: postList[index].title.toString(),
                        body: postList[index].body.toString()
                      );

                    });
                  }

                }
              ))
        ],
      ),
    );
  }
}
