import 'package:flutter/material.dart';
import 'post.dart';
import 'postList.dart';
import 'textInputWidget.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Post> posts = [];

  void newPost(String text) {
    this.setState(() {
      posts.add(new Post(text, "Dani"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Demo App")),
        body: Column(children: <Widget>[
          Expanded(child: PostList(this.posts)),
          // Padding(child: TextInputWidget(this.newPost), padding: EdgeInsets.fromLTRB(0, 0, 0, 50),)
          TextInputWidget(this.newPost)
        ]));
  }
}
