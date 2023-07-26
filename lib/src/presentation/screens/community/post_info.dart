// Post UserImg with Time of the Post
import 'package:flutter/material.dart';

class PostInfo extends StatelessWidget {
  const PostInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(),
              SizedBox(width: 5),
              Text("Marting Wanger"),
            ],
          ),
          Text(
            "8 min",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
