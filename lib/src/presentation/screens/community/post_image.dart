// Post Of the user
import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  const PostImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        color: Colors.black12,
        image: DecorationImage(
          image: NetworkImage("url"),
        ),
      ),
    );
  }
}
