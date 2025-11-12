import 'package:cubit/const/color.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../const/error/errorhandler.dart';

class Showpost extends StatefulWidget {
  const Showpost({super.key});

  @override
  State<Showpost> createState() => _ShowpostState();
}

class _ShowpostState extends State<Showpost> {
  List post = [];

  void fetchpost() async {
    try {
      final response = await Dio().get(
        "https://jsonplaceholder.typicode.com/posts",
        options: Options(
          headers: {"User-Agent": "FlutterApp", "Accept": "application/json"},
        ),
      );
      if (response.statusCode == 200) {
        setState(() {
          post = response.data;
        });
      } else {
        print("status code : ${response.statusCode}");
      }
    } catch (e) {
      print("massege error  $e");
    }
  }

  @override
  void initState() {
    fetchpost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("try dio")),
      body: ListView.builder(
        itemCount: post.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(post[index]['title'], style: TextStyle(color: color1)),
              Text(post[index]['body']),
            ],
          );
        },
      ),
    );
  }
}
