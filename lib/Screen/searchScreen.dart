import 'package:flutter/material.dart';
import 'package:new_project/Checker/internetChecker.dart';
import 'package:new_project/widgets/listWidgets/showDataWidgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../Models/PostModel.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
    return RefreshIndicator(
      onRefresh: () async {
        setState(() {

        });
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('DATA FROM JSON',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
              textAlign: TextAlign.start),
        ),
        body: Column(children: [
          Expanded(
            child: FutureBuilder(
                future: getPostApi(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Center(child:
                      CircularProgressIndicator(color: Colors.black,backgroundColor: Colors.green,strokeWidth: 5),
                    );
                  } else {
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: postList.length,
                        itemBuilder: (context, index) {
                          return ShowData(
                              id: postList[index].id.toString(),
                              title: postList[index].title.toString(),
                              body: postList[index].body.toString());
                        });
                  }
                }),
          )
        ]),
      ),
    );
  }
}
