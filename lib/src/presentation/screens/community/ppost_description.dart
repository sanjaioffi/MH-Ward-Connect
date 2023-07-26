import 'package:flutter/material.dart';

class PostDescription extends StatelessWidget {
  const PostDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      child: Text(
        "Madurai drainage failure in all of the streets in malaipakam area due to heavy rains from yesterday and it proves too much to resist",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
    );
  }
}
