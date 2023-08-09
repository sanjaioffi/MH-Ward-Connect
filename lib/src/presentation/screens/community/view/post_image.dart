// Post Of the user
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:madurai_ward_connect/src/presentation/screens/community/view/post_detailed.dart';

class PostImage extends StatelessWidget {
  const PostImage({
    super.key,
    required this.imageLink,
  });

  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PostDetailedView(
              postLink: imageLink,
            ),
          ),
        );
      },
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          color: Colors.black12,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: CachedNetworkImageProvider(imageLink),
          ),
        ),
      ),
    );
  }
}
