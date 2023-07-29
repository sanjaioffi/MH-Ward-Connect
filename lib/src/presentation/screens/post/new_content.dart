import 'package:flutter/material.dart';

class PostContent extends StatelessWidget {
  const PostContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 1,
        horizontal: 10,
      ),
      margin: const EdgeInsets.only(
        top: 10,
        left: 10,
        right: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: TextField(
        autofocus: true,
        maxLength: 500,
        minLines: 10,
        maxLines: 10,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "எண்ணங்களை பகிர்க !",
          hintStyle: TextStyle(
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
