
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class HttpDemo extends StatefulWidget {
  @override
  _HttpDemoState createState() => _HttpDemoState();
}

class _HttpDemoState extends State<HttpDemo> {
  @override
  void initState() {
    super.initState();
    // fetchPosts()
    //   .then((value) => print(value));
  }
  Future<List<Post>> fetchPosts() async {
    final response = await http.get('https://resources.ninghao.net/demo/posts.json');

    if(response.statusCode == 200 ) {
      final responseBody = jsonDecode(response.body);
      List<Post> posts = responseBody['posts']
        .map<Post>((item)=> Post.fromJson(item))
        .toList();
      
      return posts;
    }else {
      throw Exception('Failed to fetch posts');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDemo'),
        elevation: 0.0,
      ),
      body: FutureBuilder(
        future: fetchPosts(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          // print('data: ${snapshot.data}');
          // print('connectionState: ${snapshot.connectionState}');

          if(snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text('loading...'),
            );
          }
          return ListView(
            children: snapshot.data.map<Widget>((item) => ListTile(
              title: Text(item.title),
              subtitle: Text(item.author),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(item.imageUrl),
              ),
            )).toList()
          );
        }
      ),
    );
  }
}

class Post{
  final int id;
  final String title;
  final String author;
  final String description;
  final String imageUrl;

  Post(
    this.id,
    this.title,
    this.author,
    this.description,
    this.imageUrl
  );

  Post.fromJson(Map json) 
    : id = json['id'], 
      title = json['title'],
      author = json['author'],
      description = json['description'],
      imageUrl = json['imageUrl'];

  Map toJson() => {
    'id': id,
    'title': title,
    'author': author,
    'description': description,
    'imageUrl':imageUrl
  };
}