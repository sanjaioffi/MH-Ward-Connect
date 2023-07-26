import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/post_actions.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/post_image.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/post_info.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/ppost_description.dart';

class CommPostComponent extends StatelessWidget {
  const CommPostComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      color: Colors.grey.shade100,
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostInfo(),
            PostImage(),
            PostDescription(),
            PostCTA(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

List<Widget> getPosts() {
  List<Widget> posts = [];

  for (int i = 0; i < 6; i++) {
    posts.add(const CommPostComponent());
  }

  //
  return posts;
}
