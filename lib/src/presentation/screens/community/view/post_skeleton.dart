import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/post_component.dart';

class PostSkeleton extends StatelessWidget {
  const PostSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return const CommPostComponent(
          imageLink: "test",
          postUser: "",
          postDescription: "",
          userProfile: "",
        );
      },
    );
  }
}
