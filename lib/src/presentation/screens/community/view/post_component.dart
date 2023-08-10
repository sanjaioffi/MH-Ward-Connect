import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/post_actions.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/post_description.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/post_image.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/post_info.dart';

class CommPostComponent extends StatelessWidget {
  const CommPostComponent({
    super.key,
    required this.imageLink,
    required this.postUser,
    required this.postDescription,
    required this.userProfile,
  });

  final String imageLink, postUser, postDescription, userProfile;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostInfo(
              postUserImage: userProfile,
              postUserName: postUser,
            ),
            PostImage(imageLink: imageLink),
            PostDescription(postContent: postDescription),
            const PostCTA(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
