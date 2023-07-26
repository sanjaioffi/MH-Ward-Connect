import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/get_posts.dart';

class CommPosts extends StatelessWidget {
  const CommPosts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.list(
      children: getPosts(),
    );
  }
}
