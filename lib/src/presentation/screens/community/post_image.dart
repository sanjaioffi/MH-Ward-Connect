// Post Of the user
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  const PostImage({
    super.key,
    required this.imageLink,
  });

  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Colors.black12,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: CachedNetworkImageProvider(imageLink),
        ),
      ),
    );
  }
}
