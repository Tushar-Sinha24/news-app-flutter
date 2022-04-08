import 'package:flutter/material.dart';


class BlogTile extends StatelessWidget {
  final String url,urlToimage,title,description,content;

  const BlogTile({required this.url, required this.description, required this.content, required this.title, required this.urlToimage});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
    );
  }
}

